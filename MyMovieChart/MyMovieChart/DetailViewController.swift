//
//  DetailViewController.swift
//  MyMovieChart
//
//  Created by Lee Choongwon on 2017. 10. 11..
//  Copyright © 2017년 Choongwon. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController, UIWebViewDelegate {
    
    @IBOutlet var wv: UIWebView!
    
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    var mvo : MovieVO!
    
    override func viewDidLoad() {
        // NSLog("linkurl = \(self.mvo?.detail), title = \(self.mvo?.title)")
        
        let navibar = self.navigationItem
        navibar.title = self.mvo?.title
        
        let url = URL(string: (self.mvo.detail)!)
        let req = URLRequest(url: url!)
        
        self.wv.loadRequest(req)
        self.wv.delegate = self
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        self.spinner.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        self.spinner.stopAnimating()
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        self.spinner.stopAnimating()
        
        let alert = UIAlertController(title: "오류", message: "상세페이지를 읽어오지 못했습니다.", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "확인", style: .cancel) {
            (_) in
            
            _ = self.navigationController?.popViewController(animated: true)
        }
        
        alert.addAction(cancelAction)
        self.present(alert, animated: false, completion: nil)
    }
    
}
