import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';


class MessageConstant {
  //ERROR MESSAGE
  static const String CONNECTION_NOT_AVAILABLE_ERROR = "Please check your internet connection."; //
  static const String ENTER_LINK_LABEL_VAL = 'Please enter label.';
  static const String ENTER_URL_VAL = 'Please enter URL.';
  static const String ACTIVE_PARTNER_VAL = 'Already Active Account.';
  static const String DECLINE_PARTNER_VAL = 'Already Decline Account';
  static const String FEED_IS_DELETED = "Author has deleted the shared post.";
  static const String IMAGE_SOURCE_IS_INCORRECT_ERROR =
      "Image source is incorrect, please select from other location."; //
  static const String CONNECTION_INACTIVE_ERROR =
      "Your connection is inactive"; //
  static const String ACCESS_PROFILE_REVOKED_ERROR =
      "Your access on this profile has revoked.";
  static const String SORRY_OVER_18_BECOME_PARENT_ERROR =
      "Sorry, you need to be over 18 to become a Parent.";
  static const String SORRY_OVER_15_BECOME_PARTNER_ERROR =
      "Sorry, you need to be over 15 to become a partner.";
  static const String
      PARTNER_NOT_ALLOWED_CONNECTON_REQUEST_SPIKEVIEW_USERS_ERROR =
      "Partners are not allowed to send connection requests to spikeview users.";
  static const String FROM_TIME_LESS_THAN_TO_TIME_VAL = "From Time should be smaller than to Time.";
  static const String SELECT_TIMEZONE = 'Please provide timezone';
  static const String SELECT_MAJOR_VAL = "Please enter major.";
  static const String SELECT_MINOR_VAL = "Please enter minor.";
  static const String PENDING_PARTNER_ACTIVATION_BY_ADMIN_ERROR = "Your account is still under review. This feature will be available once your account has been approved. For any questions, please contact: team@spikeview.com";
  static const String PENDING_PROFILE_ACTIVATION_BY_PARENT_ERROR =
      "Your parent needs to activate your account.";
/*  static const String PENDING_PROFILE_ACTIVATION_BY_PARENT_ERROR =
      "Please have your parents approve your account before you can use these features.";*/
 /* static const String PENDING_PROFILE_ACTIVATION_BY_PARENT_ERROR =
      "Please have your parents approve your account before you can use these features.";*/

  static const String SOMETHING_WENT_WRONG_ERROR = 'Something went wrong!!';
  static const String MSG_FOR_CONNECTED = "Preview of profile visibility to your connected users.";
  static const String MSG_FOR_NON_CONNECTED = "Preview of profile visibility to users not connected to you.";
  static const String MSG_FOR_OPPORTUNITY_APPROVAL= "Opportunity will be reviewed by admin and once approved it will display to end users.";
  static const String MSG_FOR_CONNECTED_LESS_THEN_3_ACC = "Preview of profile visibility to your connected users. Add at least 3 accomplishments to make profile more attractive.";
  static const String MSG_FOR_NON_CONNECTED_LESS_THEN_3_ACC = "Preview of profile visibility to users not connected to you. Add at least 3 accomplishments to make profile more attractive.";
  static const String AUTHORIZED_ACCESS_RECOMMENDATON_ERROR =
      "Sorry, you are not authorized to access this recommendation.";
  static const String NOT_AUTHORIZED_ACCESS_OUTSIDE_ACCOMPLISHMENT =
      "Sorry, you are not authorized to access this feature.";
  static const String WRITE_SOMETHING_ERROR = "Please write something.";
  static const String VIDEO_SOURCE_INCORRECT_ERROR =
      "Video source is incorrect, please select from other location.";
  static const String SELECT_PROBLEM_CONTINUE_ERROR =
      "Please select a problem to continue.";
  static const String NEED_OVER_18_BECOME_PARENT_ERROR =
      "Sorry, you need to be over 18 to become a parent.";

  //SUCCESS MESSAGE
 /* static const String SUCCESSFULLY_SEND_RECOMMENDATION_REQUEST_SUCCESS =
      "Nice work! You have successfully done something that makes you great and your recommendation request has been sent.";
*/
  static const String SUCCESSFULLY_SEND_RECOMMENDATION_REQUEST_SUCCESS =
      "Nice work! Your profile looks great. Connect with others, share, and discover and your recommendation request has been sent.";

/*  static const String SUCCESSFULLY_DONE_SOMETHING_SUCCESS =
      "Nice Work! You’ve successfully done something that makes you great.";*/

  static const String SUCCESSFULLY_DONE_SOMETHING_SUCCESS =
      "Nice work! Your profile looks great. Connect with others, share, and discover.";

  static const String SUCCESSFULLY_UPDATE_MANAGE_OFFERING_SUCCESS =
      "Manage offering updated successfully.";

  //VALIDATION MESSAGE
  static const String SELECT_COMPETENCY_VAL = "Please select a focus area.";
  static const String AUTHOR_DELETED_POST = "Author has deleted the post that has been shared";
  static const String OPPORTUNITY_DELETED_POST = "This opportunity no longer exists";
  static const String SELECT_SKILLS_VAL = "Please select applicable skills.";
  static const String SELECT_ACHIEVEMENT_LEVEL_VAL =
      "Please select achievement level.";
  static const String SELECT_FROM_TIME_VAL = "Please select \"from time\".";
  static const String SELECT_TO_TIME_VAL = "Please select \"to time\".";
  static const String SELECT_FROM_DATE_VAL = "Please select \"from date\".";
  static const String SELECT_TO_DATE_VAL = "Please select \"to date\".";

  static const String ENTER_RECOMMENDATION_TITLE_VAL =
      "Please enter recommendation";
  static const String ENTER_FIRST_NAME_VAL = "Please enter first name.";
  static const String FIRST_NAME_CONTAINS_ALPHABET_VAL =
      'First name can only contain alphabets.';
  static const String ENTER_LAST_NAME_VAL = "Please enter last name.";
  static const String LAST_NAME_CONTAINS_ALPHABET_VAL =
      'Last name can only contain alphabets.';
  static const String ENTER_EMAIL_VAL = "Please enter email.";
  static const String VALID_EMAIL_VAL = 'Please enter valid email.';
  static const String ENTER_DESCRIPTION_VAL = 'Please enter description.';
  static const String ENTER_Personal_Reflection_VAL = 'Please enter personal reflection.';
  static const String ENTER_WEIGHT_VAL = 'Please enter weight.';
  static const String ENTER_HEIGHT_VAL = 'Please enter height.';
  static const String ENTER_PHONE_NUMBER_VAL = "Please Enter phone number";
  static const String ENTER_OTHER_BUSINESS_CATE_VAL = "Please enter the other business category";
  static const String ENTER_BUSINESS_CATE_VAL = "Please select business category.";

  static const String FEE_EMPTY_VAL = "Contact Provider";

  static const String ENTER_BIO_ADVISOR_VAL = "Please enter a brief bio.Hint Text > Example: I have 5 years of experience in working with highschool students."; //"Please enter bio.";
  static const String ENTER_BIO_VAL = "Please enter your bio.";
  static const String ENTER_PROJECT_AREA_VAL = "Please enter project areas.";
  static const String ENTER_DESIGNATION_VAL = "Please select a category.";
  static const String ENTER_SUBJECT_VAL = "Please select a subject.";
  static const String ENTER_MENTEE_VAL = "Please select mentee support.";
  static const String ENTER_QUALIFICATION_VAL = "Please select the highest level qualification.";
  static const String ENTER_DESIGNATION_VAL_other = "Please enter other Category.";
  static const String ENTER_SUBJECT_VAL_other = "Please enter other subject.";
  static const String ENTER_QUALIFICATION_VAL_other = "Please enter the highest level qualification.";

  static const String ENTER_CORRECT_DATE_RANGE_VAL = "Please enter the correct date range.";
  static const String ENTER_CORRECT_TIME_RANGE_VAL = "From Time should be smaller than to Time.";
  static const String MAXIMUM_10_IMAGE_UPLOADED_VAL =      "Maximum 10 images can be uploaded.";
  static const String MAXIMUM_100_IMAGE_UPLOADED_VAL =      "Maximum 100 files can be uploaded.";
  static const String MAXIMUM_1_VIDEO_UPLOADED_VAL =      "Only 1 video selection at a time";
  static const String MAXIMUM_8_IMAGE_UPLOADED_VAL =
      "Maximum 8 images can be uploaded.";
  static const String ENTER_VALUE_ACCOMPLISHMENT_FIELD_VAL =
      "A field(s) value has been left blank. Enter the value in Accomplishment field(s) before proceeding.";

  static const String ENTER_VALUE_PORTFOLIO_FIELD_VAL = 'A field(s) value has been left blank. Enter the value in Portfolio field(s) before proceeding';
  static const String REQUIRED_FIRST_NAME_VAL = 'First Name required';
  static const String REQUIRED_LAST_NAME_VAL = 'Last Name required';
  static const String ENTER_VALID_PHONE_NUMBER_VAL =
      'Please enter a valid phone number.';
  static const String ENTER_VALID_EMAIL_VAL = 'Please enter valid email.';
  static const String ENTER_COMPANY_NAMEL_VAL = 'Please enter the company / display name.';
  static const String ENTER_PARTNER_REJECTION = 'Please enter rejection reason.';
  static const String ENTER_COMPANY_ADDRESS_VAL =
      'Please enter the company / your address.';
  static const String ENTER_VALID_WEBSITE_URL_VAL =
      "Please enter a valid website url";
  static const String ENTER_WEB_URL_VAL = "Please Enter WebUrl";
  static const String ENTER_VALID_DOC_URL_VAL = 'Please enter a valid Doc url';
  static const String ENTER_VALID_LINK = 'Link invalid, please check and new link.';
  static const String ENTER_SOMETHING_ABOUT_COMPANY_VAL =
      'Please enter something about your company / service.';
  static const String ENTER__ABOUT_COMPANY_VAL =
      "Please Enter About Your Compnay";
  static const String ENTER_JOB_TITLE_VAL = 'Please enter Title';
  static const String ENTER_SERVICE_TITLE_VAL = 'Please enter service title';
  static const String ENTER_JOB_TYPE_VAL = 'Please enter job type';
  static const String REQUIRED_SERVICE_DESCRIPTION_VAL =
      'Service description required';
  static const String ENTER_JOB_LOCATION_VAL = 'Please enter job location';
  static const String DESCRIBE_ROLE_VAL = 'Please describe the role';
  static const String DESCRIBE_BIO_VAL = 'Please describe the bio';
  static const String DESCRIBE_DESCRIPTION_VAL = 'Please enter description.';
  static const String DESCRIBE_FEES_VAL = "Please enter fee's for your service. If free, leave it as \$0";//'Please enter fees.';
  static const String REQUIRED_DURATION_VAL = 'Duration required';
  static const String REQUIRED_STATUS_VAL = 'Status required';
  static const String REQUIRED_TITLE_VAL = 'Title required';
  static const String REQUIRED_DISPLAY_VAL = 'Text To Display Required';
  static const String REQUIRED_FROM_AGE_VAL = 'Age From required';
  static const String REQUIRED_TO_AGE_VAL = 'Age To required';
  static const String REQUIRED_INTEREST_VAL = 'Interest required';
  static const String REQUIRED_GROUP_NAME_VAL = 'Group Name required';
  static const String REQUIRED_GROUP_ABOUT_VAL = 'About Group required';
  static const String REQUIRED_OTHER_INFORMATION_VAL =
      'Other Information required';
  static const String ENTER_EXPIRATION_DATE_VAL =
      'Please enter expiration Date';
  static const String ENTER_EXPIRATION_DATE_BETWEEN_VAL =
      'Please select date between the scheduled date.';
  static const String SELECT_ATLEAST_ONE_SECTON_VAL =
      'Select atleast one action';

  static const String ENTER_INSTITUTE_NAME_VAL = 'Please enter school name.';
  static const String SELECT_GRADE_FROM_VAL = "Please select from grade";
  static const String TO_GRADE_LESS_THAN_FROM_GRADE_VAL =
      "To grade should not be less than from grade";
  static const String FROM_DATE_SMALLER_THAN_TO_DATE_VAL ="From date should be smaller than To date.";
  static const String TO_DATE_GRATER_THAN_FROM_DATE_VAL ="To date should not be less than From date.";
  static const String FROM_GRADE_LESS_THAN_TO_GRADE_VAL = "From grade should  be smaller than to grade";
  static const String SELECT_GRADE_TO_VAL = "Please select grade (to)";
  static const String ENTER_CITY_VAL = 'Please enter city.';
  static const String ENTER_TITLE_VAL = 'This field is required.';
  static const String SELECT_GRAD_VAL = 'Please select grade.';
  static const String SELECT_YEAR_VAL = "Please select year.";
  static const String REVIEW_CONFIRM_DATE_VAL =
      "Please review and confirm the dates below.";
  static const String DONT_THINK_YOU_MAKE_TENURE_VAL =
      "Don't think, you can make it in this tenure.";
  static const String ALREADY_ADDED_ALL_GRADE_VAL =
      "You have already added all grades";
  static const String VIDEO_UPLOAD_NOT_SUPPORT_VAL =
      "Video uploads are not yet supported. Please upload an image instead.";
  static const String REQUIRED_MIN_1_STUDENT_VAL =
      "Minimum 1 student required.";

  static const String ENTER_PASSWORD_VAL = "Please enter password";
  static const String ENTER_CURRENT_PASSWORD_VAL =
      "Please enter current password";
  static const String ENTER_TEMPORARY_PASSWORD_VAL =
      "Please enter temporary password";
  static const String ENTER_CORRECT_CURRENT_PASSWORD_VAL =
      "Please enter current password";
  static const String ENTER_NEW_PASSWORD_VAL = "Please enter new password";
  static const String ENTER_CONFIRM_PASSWORD_VAL =
      "Please enter confirm password";

  static const String ENTER_CONFIRM_PASSWORD =
      "Mismatch new password and confirm new password.";
  static const String PASSWORD_SHOULD_8_CHARACTER_VAL =
      'Your new password should be at least 8 characters, contain one capital letter, one small letter, one special character and one number.';

  static const String INVALID_FILE_FORMAT_VAL =
      "Invalid file format, please select .pdf files";
  static const String MAX_5_DOC_UPLOADED_VAL = "Maximum 5 documents can be uploaded.";
  static const String MAX_3_PHOTO_UPLOADED_VAL = "Maximum 3 images can be uploaded.";
  static const String MAX_10_IMAGE_VIDEO_UPLOADED_VAL =
      "Maximum 10 images or video can be uploaded.";
  static const String MAX_5_LINK_UPLOADED_VAL =
      "Maximum 5 link can be uploaded.";
  static const String MIN_1_OFFERING_SELECTED_VAL =
      "Please select at least 1 offering";
  static const String SELECT_1_PHOTO_VIDEO_VAL = 'Select one photo or video.';
  static const String SELECT_1_MENTOR_PHOTO_VAL = 'Please select mentor photo.';
  static const String SELECT_ADVISOR_PHOTO_VAL = 'Please select advisor photo.';
  static const String SELECT_TUTOR_CERTIFICATE = 'Please select teaching certificate.';
  static const String SELECT_DAY_VAL = 'Please enter your availability';
  static const String SELECT_time_slot_VAL = 'Select atleast one time slot.';
  static const String REQUIRED_FILL_ALL_FIELD_VAL =
      "Please fill all required field.";

  static const String ENTER_CORRECRT_EMAIL_VAL =
      'Please enter the correct email.';
  static const String SELECT_DOB_VAL = 'Please select date of birth.';
  static const String SELECT_ISSUED_DATE = 'This field is required';
  static const String SELECT_DATE_TAKEN_VAL = 'Please select date taken.';
  static const String SELECT_SERVICE_TYPE = 'Please select platform.';
  static const String SELECT_GENDER_VAL = "Please select gender.";
  static const String ENTER_STUDENT_FIRST_NAME_VAL =
      "Please enter student first name.";
  static const String ENTER_STUDENT_LAST_NAME_VAL =
      "Please enter student last name.";
  static const String STUDENT_FIRST_NAME_CONTAIN_ALPHABET_VAL =
      'Student First name can only contain alphabets.';
  static const String STUDENT_LAST_NAME_CONTAIN_ALPHABET_VAL =
      'Student Last name can only contain alphabets.';
  static const String ENTER_VALID_ZIP_CODE_VAL = "Please enter valid zip code.";
  static const String STUDENT_PARENT_EMAIL_CANNOT_SAME_VAL = "Student and parent email cannot be the same.";
  static const String INVALID_REFERRAL_CODE = "Please enter valid referral code.";
  static const String VALID_REFERRAL_CODE = "Referral code applied.";

  static const String ENTER_PARENT_EMAIL_VAL = "Please enter parent email.";
  static const String ENTER_PARENT_FIRST_NAME_VAL =
      "Please enter parent first name.";
  static const String ENTER_PARENT_LAST_NAME_VAL =
      "Please enter parent last name.";
  static const String PARENT_FIRST_NAME_CONTAIN_ALPHABET_VAL =
      'Parent First name can only contain alphabets.';
  static const String PARENT_LAST_NAME_CONTAIN_ALPHABET_VAL =
      'Parent Last name can only contain alphabets.';

  static const String ENTER_GROUP_NAME_VAL = 'Please enter group name.';
  static const String ENTER_GROUP = 'Please select at least 1 group.';
  static const String ENTER_MIN_3_CHAR_VAL =
      "Please insert minimum 3 character";
  static const String ENTER_GROUP_MOTIVE_VAL = 'Please enter group motive';
  static const String SELECT_STUDENT_VAL = "Please select student.";
  static const String ENTER_NAME_VAL = "Please enter name.";
  static const String NAME_CONTAIN_ALPHABT_VAL =
      'Name can only have alphabets.';
  static const String ENTER_CORRECT_INPUT_VAL =
      "Please Enter Correct Input here";
  static const String ENTER_MESSAGE_VAL = "Please Enter message";
  static const String INSERT_LINK_VAL = "Please insert link";
  static const String SELECT_TYPE_OF_CALL_TO_ACTION_VAL =
      'Please select the type of call to action: This shows up as a button next to your opportunity posting.';

  static const String CREATE_GROUP_VAL = "Please create a group";
  static const String SELECT_GROUP_VAL = "Please select a group";
  static const String ENTER_NUMBER_VAL = "Please enter number";
  static const String ADD_MEMBERS_VAL = "Please add members.";

  static const String REMOVE_LEARN_MORE_LINK_VAL =
      'Are you sure you want to remove learn more link?';
  static const String REMOVE_GET_OFFER_LINK_VAL =
      'Are you sure you want to remove get offer link?';
  static const String REMOVE_APPLY_NOW_LINK_VAL =
      'Are you sure you want to remove apply now link?';
  static const String REMOVE_NEW_GROUP_AND_ADD_EXISTING_GROUP_VAL =
      'Are you sure you want to remove new group and add existing group?';
  static const String REMOVE__EXISTING_GROUP_AND_CREATE_NEW_GROUP_VAL =
      'Are you sure you want to remove existing group and create new group?';

  static const String ENTER_DURATION_VAL = 'Please enter duration.';
  static const String ENTER_STATUS_VAL = 'Please enter status.';
  static const String ENTER_REASON_VAL = 'Please enter reason';
  static const String SELECT_ATLEAST_1_GROUP_TO_SHARE_VAL =
      "Please select atleast one group to share.";
  static const String CREATE_1_GROUP_TO_SHARE_VAL =
      "Please create one group to share.";
  static const String SELECT_PARENT_GENDER_VAL = "Please select parent gender.";
  static const String STUDENT_MUST_HAVE_1_PARENT_ATTACHED_VAL =
      "Being a minor, student must need at least one parent attached with.";
  static const String SELF_SHARE_NOT_GOOD_IDEA =
      "Self share is not a good idea.";
  static const String SELF_RECOMMENDATION_NOT_GOOD_IDEA =
      "Self recommendation is not a good idea.";
  static const String SELF_REFER_NOT_GOOD_IDEA =
      "You can't refer your self.";

  static const String PARENT_ACCEPT_CONNECTION_MSG = "Connection request approved.";
  static const String UNDER_13_GROUP_MSG =  "This group will be a private group because you are under the age of 13.";
  static const String SELF_INVITE_NOT_GOOD_IDEA =
      "You can't refer your self.";

  static const String ENTER_CITY_NAME =
      "Please enter city.";
  static const String ENTER_REQUEST_VAL = 'Please enter request.';

  static const String ENTER_RECOMMENDER_TITLE_VAL =
      'Please enter recommender title.';

  static const String RATE_OUR_SERVICE = 'Please rate our service.';

  static const String BADGE_VALIDATION =
      'Provide details about your qualification for the badge being requested.';
  static const String EMAIL_VALIDATION = 'Your own email is not allowed.';



  static const String BUILDDASHBOARD = "Start building your dashboard!";
  static const String CHARTSUBHEADING = "Before we can create any charts, we’ll first need to get some data in here!";
  static const String THANKS = "Profile Created Successfully";
  static const String DIS = "We have sent email to you with instructions and credentials to access account. ";
  static const String SETUP = "Let's get you setup and get you connected to our community!";
  static const String BRIEF_ABOUT_YOU = "Give us a brief background about you";
  static const String HOME_PAGE = "Setup Your Home Page";
  static const String CREATE_OPPORTUNITY = "Create The Opportunity - What do you want to offer to our community";
  static const String TARGET_AUDIENCE = "Set your target audience";
  static const String BUSINESS_OBJECTIVES = "Sit Back, Relax  and Let Our Community help you meet your business objectives";



  static const String SELECT_Other_DEGREE_VAL = "Please select other degree.";

  static const String ENTER_GPA_VAL = 'Please enter GPA.';
  static const String ENTER_out_of_VAL = 'Please enter out of GPA.';
  static const String SELECT_Degree_VAL = 'Please select degree.';
  static const String SELECT_degree_year_VAL = 'Please select class.';
  static const String SELECT_GRADUATION_YEAR_VAL = 'Please select graduation year.';
  static const String ENTER_INTEREST_INSTITUTE_VAL = 'Please enter interest institute.';
  static const String ENTER_gpa_out_of_less = 'GPA field should be the less value than Out of field.';
  static const String SELECT_professional_Certificates_DEGREE_VAL = "Please enter certification name.";



  static const String REQUIRED_POSITION_VAL = 'Position required';
  static const String REQUIRED_IMAGE = 'Please select image';
  static const String REQUIRED_HEGHT = 'Please select height';
  static const String REQUIRED_SPORTS = 'Please select sports';
  static const String REQUIRED_ARTS = 'Please select arts';
  static const String REQUIRED_LABEL_VAL = 'Label required';
  static const String REQUIRED_VALUE_VAL = 'Value required';
  static const String REQUIRED_CLUB_NAME_VAL = 'Club required';
  static const String REQUIRED_TEAM_NAME_VAL = 'Team required';
  static const String REQUIRED_CITY = 'City required';
  static const String REQUIRED_STATE= 'State required';
  static const String REQUIRED_JURSEY= 'Jurssey required';

  static const String COACH_NAME_CONTAIN_ALPHABET_VAL = 'Coach name can only contain alphabets.';
  static const String COACH_NAME_VAL = "Please enter coach name.";
  static const String REQUIRED_MIN_1_SKILLL ="Minimum 1 skill required.";
  static const String MAXIMUM_7_SKILLL ="Maximum 7 skills can be added.";


  static const String CATEGORY_REQUIRED = 'Please enter category.';


  static const String ADD_PHOTO = 'Add a clean and clear photo for your profile.';
  static const String ADD_URL = ' Please add url';
  static const String ADD_URL_NOT_VALID= ' URL not valid. Please try again';
  static const String FIELD_REQUIRED= 'This field is required';
  static const String FIELD_REQUIRED_LABEL= 'Label is required.';
  static const String ENTER_College_NAME_VAL = 'Please enter college name.';
  static const String MEDIA_TEXT_PORTFOLIO = 'Upload photos, videos or links your reels to showcase your skills.';


  static const String EDUCATION_HEDING = 'Education';
  static const String ACCOMPLISHMENT_HEDING = 'Accomplishment';
  static const String CERTIFICATES_TROPHIES_HEDING = 'CERTIFICATES, TROPHIES & BADGES';
  static const String CUSTOM_PROFILE_HEDING = 'CUSTOM PROFILE';
  static const String TEST_SCORE_HEDING = 'Test Score';
  static const String COMPANY_PROFILE_HEDING = 'Media';
  static const String VIEWER_END_REWCOMMENDATION_HEDING = 'Media';
  static const String HOME_HEDING = 'Home';
  static const String HOME_FEED = 'HomeFeed';
  static const String HOME_OPPORTUNITY_HEDING = 'HomeOpportunity';
  static const String OPPORTUNITY_DETAIL_VIDEO_HEDING = 'OpportunityDetailVideo';



}
