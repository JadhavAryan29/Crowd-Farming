import 'package:flutter/material.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.all(59),
              child: Text(
                "Crowd Farming",
                style: kBodyText,
                textScaleFactor: 1,
              ),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    'Privacy Policy',
                    style: kBodyText,
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  'Introduction',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '''We value the trust you place in us and recognize the importance of secure transaction and imformation priavcy. This privacy policy describes how CROWDFARMING and its affiliates collect, use, shares, protect or otherwise process your personal imformation through Crowdfarming website "XYZ". However, please note that we do not offer any product/service under this platform outside India. By visiting this platform, providing your imformation or availing any service offered on the platform, you expressely agree to be bound by the T&C of this PRIVACY POLICY, the TERMS OF USE and the applicaple service terms and condition, and agree to be governed by the laws of India including but not limited to the laws applicable to data protection and privacy. If you do not agree please do not access our platform. ''',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Collection',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'We collect your personal information relating to your identity, demographics and when you use our Platform, services or otherwise interact with us during the course of our relationship and related information provided from time to time. Some of the information that we may collect includes but is not limited to: &lt;ul>&lt;li>Information provided to us during sign-up/registering or using our Platform such as name, date of birth, address, telephone/mobile number, email ID, occupation and any such information shared as proof of identity or address.&lt;/li>&lt;li>We may also request you to share your PAN, GST number, Government issued ID cards/number and Know-You-Customer (KYC) details to check your eligibility for certain products, services or events including but not limited to credit and payment products.&lt;/li>&lt;li>Some of the sensitive personal information such as your bank account or credit or debit card or other payment instrument information or biometric information such as your facial features or physiological information (in order to enable use of certain features available on the Platform to assist you with your shopping experience) or password etc.&lt;/li>&lt;li>Some of the information such as your shopping behaviour, preferences, call data records, device location, voice, your browsing history, and other information that you may provide to us from time to time.&lt;/li>&lt;/ul>',
                    style: kSignUpText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '''Our primary goal in doing so is to provide you a safe, efficient, smooth, and customized experience. This allows us to provide services and features that most likely meet your needs, and to customize our Platform to make your experience safer and easier. In general, you can browse the Platform without telling us who you are or revealing any personal information about yourself. Once you give us your personal information, you are not anonymous to us. Where possible, we indicate which fields are required and which fields are optional. You always have the option to not provide information, by choosing not to use a particular service or feature on the Platform. We may track your buying behaviour, preferences, and other information that you choose to provide on our Platform. We use this information to do research on our users' demographics, interests, and behaviour to better understand and serve our users. This information is compiled and analysed on an aggregated basis. This information may include the URL that you just came from (whether this URL is on our Platform or not), which URL you next go to (whether this URL is on our Platform or not), your computer browser information, and your IP address. If you enrol into our loyalty program or participate in third party loyalty program offered by us, we will collect and store your personal information such as name, contact number, email address, communication address, date of birth, gender, zip code, lifestyle information, demographic and work details which is provided by you to us or a third-party business partner that operates platforms where you can earn loyalty points for purchase of goods and services, and/or also redeem them. We will also collect your information related to your transactions on Platform and such third-party business partner platforms. When such a third-party business partner collects your personal information directly from you, you will be governed by their privacy policies. We shall not be responsible for the third-party business partner’s privacy practices or the content of their privacy policies, and we request you to read their privacy policies prior to disclosing any information. If you set up an account or transact with us, we may seek some additional information, such as billing address, credit/debit card number and a credit/debit card expiration date and/ or other payment instrument details and tracking information from cheques or money orders to provide services, enable transactions or to refund for cancelled transactions. If you choose to post messages on our message boards, personalised messages, images, photos, gift card message box, chat rooms or other message areas or leave feedback/product review or if you use voice commands to shop on the Platform, we will collect that information you provide to us. Please note such messages posted by you will be in public domain and can be read by others as well, please exercise caution while posting such messages, personal details, photos and reviews. We retain this information as necessary to resolve disputes, provide customer support, internal research and troubleshoot problems as permitted by law. If you send us personal correspondence, such as emails or letters, or if other users or third parties send us correspondence about your activities or postings on the Platform, we may collect such information into a file specific to you. While you can browse some sections of our Platform without being a registered member, certain activities (such as placing an order or consuming our online content or services or participating in any event) requires registration. We may use your contact information to send you offers based on your previous orders or preferences and your interests. If you receive an e-mail, a call from a person/association claiming to be from Myntra seeking sensitive personal information like debit/credit card PIN, net-banking or mobile banking password, we request you to never provide such information. We at Myntra or our affiliate logistics partner do not at any time connect with you requesting for such information. If you have already revealed such information, report it immediately to an appropriate law enforcement agency.''',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Use',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '''We use personal information to provide the services you request. To the extent we use your personal information to market to you, we will provide you the ability to opt-out of such uses. We use your personal information to assist sellers and business partners in handling and fulfilling orders; enhancing customer experience; to resolve disputes; troubleshoot problems; help promote a safe service; collect money; measure consumer interest in our products and services, inform you about online and offline offers, products, services, and updates; customize your experience; detect and protect us against error, fraud and other criminal activity; enforce our terms and conditions; conduct marketing research, analysis and surveys; and as otherwise described to you at the time of collection of information. We will ask for your permission to allow us access to your text messages (SMS), contacts in your directory, camera, photo gallery, location and device information: (i) to send commercial communication regarding your orders or other products and services (ii) enhance your experience on the platform and provide you access to the products and services offered on the Platform by sellers, affiliates, partners or lending partners. You understand that your access to these products/services may be affected in the event permission is not provided to us. In our efforts to continually improve our product and service offerings, we collect and analyse demographic and profile data about users' activity on our Platform. We identify and use your IP address to help diagnose problems with our server, and to administer our Platform. Your IP address is also used to help identify you and to gather broad demographic information. We will occasionally ask you to complete surveys conducted either by us or through a third- party market research agency. These surveys may ask you for personal information, contact information, gender, date of birth, demographic information (like pin code, age or income level) attributes such as your interests, household or lifestyle information, your purchasing behaviour or history preference and other such information that you may choose to provide. The survey may involve collection of voice data or video recordings. Participation in these surveys are purely voluntary in nature. We use this data to tailor your experience at our Platform, providing you with content that we think you might be interested in and to display content according to your preferences.''',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Cookies',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'We use data collection devices such as "cookies" on certain pages of the Platform to help analyse our web page flow, measure promotional effectiveness, and promote trust and safety. "Cookies" are small files placed on your hard drive that assist us in providing our services. Cookies do not contain any of your personal information. We offer certain features that are only available through the use of a "cookie". We also use cookies to allow you to enter your password less frequently during a session. Cookies can also help us provide information that is targeted to your interests. Most cookies are "session cookies," meaning that they are automatically deleted from your hard drive at the end of a session. You are always free to decline/delete our cookies if your browser permits, although in that case you may not be able to use certain features on the Platform and you may be required to re-enter your password more frequently during a session. Additionally, you may encounter "cookies" or other similar devices on certain pages of the Platform that are placed by third parties. We do not control the use of cookies by third parties. We use cookies from third-party partners such as Google Analytics for marketing and analytical purposes. Google Analytics helps us understand how our customers use the site. You can read more about how Google uses your Personal Information here: https://www.google.com/intl/en/policies/privacy/. You can also opt-out of Google Analytics here:https://tools.google.com/dlpage/gaoptout',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Links to Other Sites',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Our Platform links to other websites that may collect personal information about you. CrowdFarming is not responsible for the privacy practices or the content of those linked websites.',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Security Precautions',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'To protect your personal information from unauthorised access or disclosure, loss or misuse we adopt reasonable security practices and procedures, in line with international standards ISO/IEC 27001:2013 which is recognised as one of the highest information security standards. Whenever you access your account information, we offer the use of a secure server. The transmission of information is not completely secure for reasons beyond our control. We adopt industry standard security measures and keep updating our systems from time to time to protect your personal information against any hacking or virus dissemination. However, by using the Platform, the users accept the security implications of data transmission over the internet and the World Wide Web which cannot always be guaranteed as completely secure, and therefore, there would always remain certain inherent risks regarding use of the Platform. Users are responsible for ensuring the protection of login and password records for their account.',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Choice/Opt-Out',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'We provide all users with the opportunity to opt-out of receiving non-essential (promotional, marketing-related) communications from us after setting up an account. If you do not wish to receive promotional communications from us, then please unsubscribe by clicking on the unsubscribe link in the email or visit our Help Center at XYZ to unsubscribe/opt-out.',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Advertisements',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'We use third-party advertising companies to serve ads when you visit our Platform. These companies may use information (not including your name, address, email address, or telephone number) about your visits to this Platform and other websites in order to provide advertisements about goods and services of interest to you.',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Use of Children Information',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Use of our Platform is available only to persons who can form a legally binding contract under the Indian Contract Act, 1872. We do not knowingly solicit or collect personal information from children under the age of 18 years. If you have shared any personal information of children under the age of 18 years, you represent that you have the authority to do so and permit us to use the information in accordance with this Privacy Policy.',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Data Retention',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'We retain your personal information for a period no longer than is required for the purpose for which it was collected or as required under any applicable law. However, we may retain data related to you if there is a legal obligation to retain the data; if required to comply with any applicable statutory or regulatory retention requirement by law; if we believe it may be necessary to prevent fraud or future abuse; to enable Crowdfarming to exercise its legal rights and/or defend against legal claims; or for other legitimate purposes. We may continue to retain your data in anonymised form for analytical and research purposes.',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Consent',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'By visiting our Platform or by providing your information, you consent to the collection, use, storage, disclosure and otherwise processing of your information (including sensitive personal information) on the Platform in accordance with this Privacy Policy. If you disclose to us any personal information relating to other people, you represent that you have the authority to do so and permit us to use the information in accordance with this Privacy Policy. You, while providing your personal information over the Platform or any partner platforms or establishments, consent to us (including our other corporate entities, affiliates, lending partners, technology partners, marketing channels, business partners and other third parties) to contact you through SMS, instant messaging apps, call and/or e-mail for the purposes specified in this Privacy Policy. You have an option to withdraw your consent that you have already provided by writing to the Grievance Officer at the contact information provided below. Please mention “Withdrawal of consent for processing personal information” in your subject line of your communication. We will verify such requests before acting on our request. Please note, however, that withdrawal of consent will not be retroactive and will be in accordance with the terms of this Privacy Policy, related terms of use and applicable laws. In the event you withdraw consent given to us under this Privacy Policy, we reserve the right to restrict or deny the provision of our services for which we consider such information to be necessary.',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Changes to this Privacy Policy',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Please check our Privacy Policy periodically for changes. We may update this Privacy Policy to reflect changes to our information practices. We will alert you to significant changes by posting the date our Privacy Policy got last updated, placing a notice on our Platform, or by sending you an email when we are required to do so by applicable law.',
                    style: kSignUpText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Queries',
                  style: kfeed,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'If you have a query, concern, or complaint in relation to collection or usage of your personal information under this Privacy Policy, please contact us at the contact information provided above.',
                    style: kSignUpText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
