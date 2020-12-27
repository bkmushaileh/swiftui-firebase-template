<div dir="rtl">
  
# قالب Firebase 
> Firebase startup template 

<img width="300" alt="Firebase template demo gif" src="https://user-images.githubusercontent.com/8784343/103164888-ecdd9f80-4821-11eb-885c-2b84173d11e9.gif" />



من خلال هذا القالب يمكنك إنشاء تطبيقات ترتبط بسحابة Firebase بكل سهولة. يمكنك اعادة استعمال بعض الـ Views مثل
- Sign in 
- Sign up 
- Add items
- List items

## ترتيب الملفات
<img width="556" alt="Firebase template files structure" src="https://user-images.githubusercontent.com/8784343/103164641-f74a6a00-481e-11eb-99e2-5ba56f45f273.png">

# 1. Authentication التوثيق
يمكنك التعديل على قالب صفحة تسجيل الدخول وإنشاء حساب جديد من خلال 
`Views > Authentication`

هناك 2 models مهمان في عملية تسجيل الدخول وعمل حساب جديد 

عند عمل حساب جديد، هناك model باسم `User` و model اسم `SignInCredentials`. 
1. `User` هو المستعمل عند إنشاء حساب جديد. عادة تضع في الاسم، رقم الهاتف الإيميل، وغيرها من التفاصيل المهمة.  يعتبر وجود الإيميل مهم، ويجب أن لا يحتوي على كلمة المرور. يتم تمرير كلمة المرور في مكان لاحق. يستعمل عند عمل Sign up وعندما تستقبل تفاصيل المستخدم من قاعدة البيانات. 
يتم حفظ المستخدم عن عمل تسجيل دخول جديد تحت collection في Firebase باسم `users`
2. `SignInCredentials` ويحتوي فقط على الإيميل وكلمة المرور. وهو يستعمل عند عمل sign in فقط.


البرنامج يبدأ من خلال صفحة `MainApp`. حيث يقوم `MainApp` بإعادة بتفعيل `Firebase` ثم تشغيل واجهة `MainView` وإرسال `EnvironmentObject` الخاص ب `Firebase`. بحيث يمكن لكل الواجهات أسفل هذه الواجهات أن تصل إلى دوال ال `EnvironmentObject` المعرف باسم `FirebaseEnv` 

<div dir="ltr">
  
```swift
import SwiftUI
import Firebase
@main
struct MainApp: App {
    init() {
        // configuring Firebase
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(FirebaseEnv())
        }
    }
}
```

</div>

ثم `MainView` تقرر ما إذا كانت ستعرض صفحة طلب تسجيل الدخول أو الصفحة الرئيسية 
<div dir="ltr">
  
```swift
struct MainView: View {
    @EnvironmentObject var env: FirebaseEnv
    var body: some View {
        if env.signedIn{
            Home()
        }
        else{
            AuthenticationView()
        }
    }
}
```

</div>


يتم استعمال `FirebaseEnv` من أجل العمليات المتعلقة ب Firebase بشكل عام، مثل Sign in و Sign up و Sign out، وغيرها من الأمور المشتركة في جميع الواجهات. 


# 2. Database قواعد البيانات
يمكنك إضافة وحذف أي عنصر تريد إلى قاعدة البيانات في Firebase من خلال استعمال Firestore
الخطوات كالتالي: 
1. قم بعمل Model جديد من خلال الذهاب إلى



  
  </dir>
