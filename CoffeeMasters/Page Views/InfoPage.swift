//
//  Info.swift
//  CoffeeMasters
//
//  Created by SK Salman Ahmad Sabbir on 8/15/24.
//

import SwiftUI
import WebKit

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}


struct WebView: UIViewRepresentable{
    func makeUIView(context: Context) -> WKWebView {
          let config = WKWebViewConfiguration()
          config.userContentController.add(WebInterfaceDialogs() , name: "alert")
          return WKWebView(frame: .zero, configuration: config)
      }
      
      func updateUIView(_ webView: WKWebView, context: Context) {
          let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")!
          webView.load(URLRequest(url: url))
          
          let name = UserDefaults.standard.string(forKey: "name") ?? ""
          webView.evaluateJavaScript("injectFormData('\(name)')")
      }
    func executeJavascript(webView: WKWebView){
        webView.evaluateJavaScript("alert('hello from Swift')");
    }
   
    
}

struct InfoPage: View {
    var body: some View {
        WebView()
    }
}

#Preview {
    InfoPage()
}
