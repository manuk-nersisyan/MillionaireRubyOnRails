# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:
* OS type
    Windows 10
* Ruby version 
    2.6.6
* Rails version 
    6.0.3.2

* How to run the test suite

    `git clone https://github.com/manuk-nersisyan/MillionaireRubyOnRails.git` \n
    `yarn install --check-file`
    `bundle install`
    `rails g devise:install`
    `rails g devise user`
    `rails generate active_admin:install`
    `rails db:migrate`
    `rails db:seed`
    `rails s`
    
## ToDo

* Բարդության աստիճանը և միավորը պահել առանձին table -ում և կապել Qeuestions և Games table -ների հետ։
* Answers -ը create անել լիստով, ստուգել որ գոնե մեկ պատասխան ճիշտ լինի։  
* Օգտագործել MySQL SQLite -ի փոխարեն, ստեղծել .env.example credentials պահելու համար։ 

## Description

Խաղը նման է «Ով է ուզում դառնալ միլիոնատեր» խաղին։

Յուրաքանչյուր խաղի ընթացքում խաղացողին տրվում է 5 հարց, որոնք պատահականության
սկզբունքով ընտրվում են տվյալների բազայից ու չեն կրկնվում մեկ խաղի ընթացքում։
Յուրաքանչյուր հարցի համար կա հնարավոր պատասխանի տարբերակներ (n հատ, որոնք
պահվում են տվյալների բազայում)։ Երբ խաղացողը ընտրում է
պատասխանների տարբերակներից մեկը, համակարգը նրան տեղեկացնում է դրա ճիշտ կամ
սխալ լինելու մասին։Յուրաքանչյուր հարց ունի իր համապատասխան միավորը որը ըստ
բարդության պահվում է տվյալների բազայում։ Պատասխանի ճիշտ լինելու
պարագայում համակարգը տեղեկացնում է թե քանի միավոր է տվյալ հարցը ,
տվյալ խաղի համար հաշվարկվող միավորներին գումարվում է տվյալ հարց համար նախատեսված միավորը,
և պահվում տվյալների բազայում յուրաքանչյուր հարց գնահատվում է 5-20 միավոր արժեքով։
Սխալ պատասխանի պարագայում միավոր չի գումարվում եւ խաղացողը տեղեկացվում է, թե
որն է ճիշտ պատասխանը։ Խաղի ավարտին խաղացողին ցուցադրվում է նրա հավաքած
միավորների քանակը։

(Login) Admin , ով կարող է ավելացնել/ջնջել/փոփոխել
հարցերը, դրանց պատասխանելու տարբերակները եւ թե որն է ճիշտ տարբերակը, ինչպես
նաեւ յուրաքանչյուր հարցի միավորը, ըստ բարդության։

Գրանցվելու եւ մուտք գործելու հնարավորություն (email password)։
Խաղալ հնարավոր է լինում միայն մուտք գործելուց հետո։

Յուրաքանչյուր օգտատիրոջ համար հաշվարկվում է լավագույն արդյունքը ու բոլոր օգտատերերի
լավագույն արդյունքների հիման վրա top-points էջում ցուցադրվում է լավագույն տասնյակը:
