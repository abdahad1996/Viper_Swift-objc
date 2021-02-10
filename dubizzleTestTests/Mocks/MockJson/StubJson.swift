//
//  StubJson.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 10/02/2021.
//

import Foundation
import Alamofire
let mockJSONDataForDynamo = """
 {
     "results": [
         {
             "created_at": "2019-02-24 04:04:17.566515",
             "price": "AED 5",
             "name": "Notebook",
             "uid": "4878bf592579410fba52941d00b62f94",
             "image_ids": [
                 "9355183956e3445e89735d877b798689"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/9355183956e3445e89735d877b798689?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=kmAu5tG8f0NIBWpnnFnghsrEf68%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826937"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/9355183956e3445e89735d877b798689-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=azBrjm3D4DPiSlbtfyjovwTYDx0%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826937"
             ]
         },
         {
             "created_at": "2019-02-23 07:56:26.686128",
             "price": "AED 500",
             "name": "Glasses",
             "uid": "bdf455e89f3b49f484d2a181b0268eab",
             "image_ids": [
                 "46a0c97762ba449cb49b3575681a4d84"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/46a0c97762ba449cb49b3575681a4d84?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=DVYxsq3zOOIZYawMkeNQBANOcCg%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826937"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/46a0c97762ba449cb49b3575681a4d84-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=CB4yV4auG1dvfnFFMB3o3327QRU%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826937"
             ]
         },
         {
             "created_at": "2019-02-27 11:21:59.983164",
             "price": "AED 600",
             "name": "monitor",
             "uid": "b27233dd372543ffae38cce03ea9f047",
             "image_ids": [
                 "5cfcab40ab9048c0b265468b9eea8cd8"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/5cfcab40ab9048c0b265468b9eea8cd8?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=36IjchS6RqGLM7PXpMZUllsdTIg%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826937"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/5cfcab40ab9048c0b265468b9eea8cd8-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=7bx080g20PPFFXKV8vnun55XBRM%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826938"
             ]
         },
         {
             "created_at": "2019-02-23 11:40:26.022080",
             "price": "AED 600",
             "name": "acoustic guitar",
             "uid": "130f46715a20423896606703bb783eda",
             "image_ids": [
                 "920ccd0ccd664699aed8b4e09ea55096"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/920ccd0ccd664699aed8b4e09ea55096?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=oP3T45PRDtNL%2BlEq67G3WiTYDBY%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826938"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/920ccd0ccd664699aed8b4e09ea55096-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=QsLtKBgAShSFi%2B89NreeUlevZAs%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826938"
             ]
         },
         {
             "created_at": "2019-02-23 11:45:26.684315",
             "price": "AED 5",
             "name": "Pen",
             "uid": "22c5b4fbec0149d7be23ddaec5d743c5",
             "image_ids": [
                 "80cf682cc0b4425d9aed74e49ae656be"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/80cf682cc0b4425d9aed74e49ae656be?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=i%2B2YUPApS2CaW1adTkaSDMMVtVQ%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826938"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/80cf682cc0b4425d9aed74e49ae656be-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=AiYSUDqhpUjU%2FiOdDqxb%2Bk%2BSNI0%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826938"
             ]
         },
         {
             "created_at": "2019-02-24 03:44:27.587018",
             "price": "AED 100",
             "name": "Hat",
             "uid": "8e72663c6057482386f318b0ff2e8be2",
             "image_ids": [
                 "9662015c1f1c4226ad026ddc3390213d"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/9662015c1f1c4226ad026ddc3390213d?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=7ePTQDW6YsRWmPnLTxh%2FvwL%2FByA%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826938"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/9662015c1f1c4226ad026ddc3390213d-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=WIFm%2BJLPDTEHaY%2F0pg6vevIbB%2BE%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826938"
             ]
         },
         {
             "created_at": "2019-02-23 11:28:04.222234",
             "price": "AED 450",
             "name": "sunglass",
             "uid": "65dbe8798b414873884ace02980387ec",
             "image_ids": [
                 "7842cf27826844b99533144c72c3a379"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/7842cf27826844b99533144c72c3a379?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=RMpwieJRPb0U1XSgjrS%2BcicDntU%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826939"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/7842cf27826844b99533144c72c3a379-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=sEz56D30yV6Xpk39UjAp%2B%2Frnq9o%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826939"
             ]
         },
         {
             "created_at": "2019-02-24 02:34:54.942502",
             "price": "AED 12",
             "name": "coffee mug",
             "uid": "244fe7e3d6e54fd18c72f5ab75e34822",
             "image_ids": [
                 "f12fbe72ae0d4ce281f53265f2d36e71"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/f12fbe72ae0d4ce281f53265f2d36e71?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=G75geMl3EjHlIM91N0PY8PZIK8E%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826939"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/f12fbe72ae0d4ce281f53265f2d36e71-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=KJ0F78rDS%2FQXcPqI6D39JfZUzcg%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826939"
             ]
         },
         {
             "created_at": "2019-03-07 16:41:41.115808",
             "price": "AED 45000",
             "name": "sports car, sport car",
             "uid": "e1146fea627d4e40a22282e3e92d00ec",
             "image_ids": [
                 "a4afcbffb07f43ec85909346c1ba5cd5"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/a4afcbffb07f43ec85909346c1ba5cd5?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=HCuAv%2BCdvr3ouW6Gq8Xi3%2Bwusbo%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826939"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/a4afcbffb07f43ec85909346c1ba5cd5-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=ejkJfLtSzWCQt6Lhx8rYJWdh1DE%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826939"
             ]
         },
         {
             "created_at": "2019-09-23 12:42:41.434262",
             "price": "AED 800",
             "name": "studio couch, day bed",
             "uid": "efcbb9de74364f2b982623d4f03a0386",
             "image_ids": [
                 "d94ea3ca5a1e424684edd1675776fd47"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/d94ea3ca5a1e424684edd1675776fd47?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=m6Zw%2FTHQdLnjhJWpwPikaxeyLiA%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826939"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/d94ea3ca5a1e424684edd1675776fd47-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=T5%2FT8wLBz%2BKAwawu6nwXnNCzS6s%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826939"
             ]
         },
         {
             "created_at": "2019-02-23 11:29:41.642087",
             "price": "AED 250",
             "name": "table lamp",
             "uid": "f75dfaa3a9d4485581cd2d49ca02d7a1",
             "image_ids": [
                 "03f55185a03e4760a66d3001b7cc6506"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/03f55185a03e4760a66d3001b7cc6506?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=Y5fnbH4dokT6ARt77dyCoRHAoGA%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826939"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/03f55185a03e4760a66d3001b7cc6506-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=kNkwvS8jdpUka49nqpxlsUA04pg%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826939"
             ]
         },
         {
             "created_at": "2019-03-01 06:34:17.284919",
             "price": "AED 65",
             "name": "dial telephone, dial phone",
             "uid": "b02862ced008434682f5e56eb325eaae",
             "image_ids": [
                 "d236200a93d04c5a838bc1ae6c936753"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/d236200a93d04c5a838bc1ae6c936753?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=bb0RYAyS5a799aVn8g%2FCO1T0qy0%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/d236200a93d04c5a838bc1ae6c936753-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=B%2FD91eoBuplpoRdTJH6tyPa0q1Y%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ]
         },
         {
             "created_at": "2019-02-24 06:26:21.752895",
             "price": "AED 25",
             "name": "Pen",
             "uid": "3eddd356004f4e90b7d4ca57ff62184a",
             "image_ids": [
                 "23feec72a3b1496c83e619bdb616c95d"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/23feec72a3b1496c83e619bdb616c95d?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=7iZr9WDABDpPtcK2Cq7luHFGSqc%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/23feec72a3b1496c83e619bdb616c95d-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=YNTIUSYn5htSkrnOxJsDJYXCFoc%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ]
         },
         {
             "created_at": "2019-02-24 04:53:52.285705",
             "price": "AED 250",
             "name": "sunglasses, dark glasses, shades",
             "uid": "28ed7f5695474f87a672eecab8f5f771",
             "image_ids": [
                 "61d555b138d74ee793e5664edbeb545f"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/61d555b138d74ee793e5664edbeb545f?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=WOCq8CgrlYWEQJ4LyPGafGdJNO4%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/61d555b138d74ee793e5664edbeb545f-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=QBeCZn4V8jMZ5zfFCP4lMDLVbbM%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ]
         },
         {
             "created_at": "2019-02-25 05:45:46.643514",
             "price": "AED 75",
             "name": "Book",
             "uid": "ffdc6d7d51ad44babe02614b26c56245",
             "image_ids": [
                 "a3ca30d2488e43e68d4109b991ff2b42"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/a3ca30d2488e43e68d4109b991ff2b42?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=KbMTyE%2B06PZVYXrWhkwD5NM%2BsKc%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/a3ca30d2488e43e68d4109b991ff2b42-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=H3zI9UcVovqa%2BOvPvsdBcL7n8uY%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ]
         },
         {
             "created_at": "2019-02-23 11:47:52.822642",
             "price": "AED 12",
             "name": "Notebook ",
             "uid": "74bd19c947cb4904be7a1bd9345de4d3",
             "image_ids": [
                 "5210489479784ca8bd9e0ac583b4199a"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/5210489479784ca8bd9e0ac583b4199a?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=xvCkZXo%2F9jjk7EafAQspSaGtvlM%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/5210489479784ca8bd9e0ac583b4199a-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=p1fSBScoOqJCigBfIeDgZFjcspc%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ]
         },
         {
             "created_at": "2019-02-23 11:29:03.524622",
             "price": "AED 60",
             "name": "pineapple, ananas",
             "uid": "482ed483d36d498bac5b9b8c27de9421",
             "image_ids": [
                 "1ab1a4b21d6747c9994d0dff3ff6c634"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/1ab1a4b21d6747c9994d0dff3ff6c634?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=v6CbZdxb6Z6dW5qtHH0IIP%2FQquo%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826940"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/1ab1a4b21d6747c9994d0dff3ff6c634-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=TGKvj9dCY7iGc3Y%2BJEKpRlHc7eE%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826941"
             ]
         },
         {
             "created_at": "2019-02-27 12:24:40.969061",
             "price": "AED 25",
             "name": "Notebook ",
             "uid": "bb2882a984884d1f86e877c5194ee44e",
             "image_ids": [
                 "6bda5343ed714ddf90af089de05fe9c6"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/6bda5343ed714ddf90af089de05fe9c6?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=m9az7UDRUan3omlKoJ4VYzt%2F5eE%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826941"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/6bda5343ed714ddf90af089de05fe9c6-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=P95Z9H%2Fp8tLdPjV9uS%2BaFXr6uC0%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826941"
             ]
         },
         {
             "created_at": "2019-04-15 13:38:53.687469",
             "price": "AED 50",
             "name": "book jacket, dust cover, dust jacket, dust wrapper",
             "uid": "82165781e3294de4b916541dfc6ad60e",
             "image_ids": [
                 "9d002219af9c4374bfdf54730a745606"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/9d002219af9c4374bfdf54730a745606?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=6KFWoWXJnrWZpe%2BJyidaLvzEcB4%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826941"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/9d002219af9c4374bfdf54730a745606-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=sfxLGU5MSULR13swvzxswcNZDSQ%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826941"
             ]
         },
         {
             "created_at": "2019-02-23 11:11:01.282260",
             "price": "AED 45",
             "name": "mouse, computer mouse",
             "uid": "0fa43a3cb366475fb5d60fe1a208fe95",
             "image_ids": [
                 "c96e82f913034c27b291a1722613f162"
             ],
             "image_urls": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/c96e82f913034c27b291a1722613f162?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=Ifs5Crl3E0Ul8wvnv2rzklDykmo%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826941"
             ],
             "image_urls_thumbnails": [
                 "https://demo-app-photos-45687895456123.s3.amazonaws.com/c96e82f913034c27b291a1722613f162-thumbnail?AWSAccessKeyId=ASIASV3YI6A4SQDZ5GW5&Signature=SdgznayPt12HvGuN02g1EBgjiiA%3D&x-amz-security-token=IQoJb3JpZ2luX2VjEIf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDhd%2BtzGdRPQAwPWk5aD9u0MP35RA1L7oBhtKHC8bhEnwIhAL1gHvxSrQwhHVls2EJhPRFPkZM2Dr9%2BsLzYUIGyHylUKtcBCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQAhoMMTg0Mzk4OTY2ODQxIgyOiY7d%2Bt4ILd1KIUMqqwH7H0%2BtmC1XOcj%2BNQq0HY7aP%2BNIV9kAP9Ps9wi%2FZGKFLor6CNKoO%2FZXFZAs5TQk8m%2BED8GgrApcIPf6i%2FMo4BQqxQReJ8fCWVqawHsEjXTIjaA2dWX7gX9QJig4muhgTvhDigRDzua62iJOdh0mKH1MxEvUfxAQEraLdup4H%2B7dHzoVbCqHB3ukh9Ss%2FINwYFAg6QDmbJYVycUFEPghxZwugyuSawf3zKkx1kcwp%2FaGgQY63wH%2FMnjEoRLiqFimhbu42I7Z7RZ%2FivmyfXSJWshphBhiby2tjtpd6JPLuYnIsrQdkKRZe3jywcQCRWSYWLF47q1ISZS8YFC0Z3qe7BPJpKitYjH2r%2BjXptKvwxY89FevDxMKyPTmIR51DSGtqIuU2kkcmMEXG%2B%2Flv5LERbcGO9pIIYZcvTHoFE87KAMS5n%2BRjjOvoEghnmNfm%2FrjvD4eS6x3V8Zu%2Bz6uZMpH5kH15W4LI%2FjH4Z3M2FRcnLnXhiJyZsgraOubwyXkztrsjLfYtyx1hQSPRMNIKPfoGXbEkOFe&Expires=1612826941"
             ]
         }
     ],
     
 }
""".data(using: .utf8)
 
