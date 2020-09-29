//
//  NetworkTool.swift
//  PinGo
//
//  Created by GaoWanli on 16/1/16.
//  Copyright © 2016年 GWL. All rights reserved.
//

import UIKit
import Alamofire

class NetworkTool: NSObject {
    /**
     *  请求 JSON
     *
     *  @param method        HTTP 请求方法
     *  @param URLString     URL字符串
     *  @param parameters    参数字典
     *  @param completion    完成回调，返回NetworkResponse
     */
    class func requestJSON(method: Alamofire.Method, URLString: String, parameters: [String: AnyObject]? = nil, completion:(_ response: NetworkResponse?) -> ()) {
        Alamofire.request(method, URLString, parameters: parameters, encoding: .URL, headers: nil).responseJSON { (JSON) in
            switch JSON.result {
            case .Success:
                if let value = JSON.result.value {
                    let nResponse = NetworkResponse(dict: value as! [String : AnyObject])
                    completion(response: nResponse)
                }
            case .Failure(let error):
                debugPrint(error)
            }
        }
    }
}
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com
