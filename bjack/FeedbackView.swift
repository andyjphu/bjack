//
//  FeedbackView.swift
//  bjack
//
//  Created by Andy Phu on 4/19/25.
//

import SwiftUI

// MARK: - Keyboard Dismiss Helper
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct FeedbackView: View {
    @State private var message: String = ""
    @State private var isSending = false
    @State private var didSend = false
    @State private var error: String?

    var body: some View {
        ZStack {
            // Dismiss keyboard on background tap
            Color(.systemBackground)
                .ignoresSafeArea()
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }

            VStack(alignment: .leading, spacing: 20) {
                Text("Send Feedback")
                    .font(.largeTitle)
                    .bold()

                TextEditor(text: $message)
                    .frame(height: 150)
                    .padding(4)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray.opacity(0.4))
                    )

                if let error = error {
                    Text(error)
                        .foregroundColor(.red)
                }

                if didSend {
                    Text("✅ Sent! Thank you!")
                        .foregroundColor(.green)
                }

                Button(action: sendFeedback) {
                    if isSending {
                        ProgressView()
                            .frame(maxWidth: .infinity)
                    } else {
                        Text("Send")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .disabled(isSending || message.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Feedback")
        .navigationBarTitleDisplayMode(.inline)
    }

    func sendFeedback() {
        guard let url = URL(string: "https://formspree.io/f/mdkeqdqg") else { return }

        isSending = true
        error = nil

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let body = ["message": message]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body)

        URLSession.shared.dataTask(with: request) { _, response, err in
            DispatchQueue.main.async {
                isSending = false

                if let err = err {
                    error = "Failed to send: \(err.localizedDescription)"
                    return
                }

                guard let httpResponse = response as? HTTPURLResponse,
                      200..<300 ~= httpResponse.statusCode else {
                    error = "Server error. Please try again."
                    return
                }

                message = ""
                didSend = true
            }
        }.resume()
    }
}
