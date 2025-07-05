// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Email is required`
  String get requiredEmail {
    return Intl.message(
      'Email is required',
      name: 'requiredEmail',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid`
  String get invalidEmail {
    return Intl.message(
      'Email is invalid',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get requiredPassword {
    return Intl.message(
      'Password is required',
      name: 'requiredPassword',
      desc: '',
      args: [],
    );
  }

  /// `The password must be at least 8 characters.`
  String get invalidPassword {
    return Intl.message(
      'The password must be at least 8 characters.',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Network Error`
  String get networkErrorMessage {
    return Intl.message(
      'Network Error',
      name: 'networkErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Some thing went wrong`
  String get somethingWentWrong {
    return Intl.message(
      'Some thing went wrong',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message('Loading...', name: 'loading', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Invalid format`
  String get invalidFormat {
    return Intl.message(
      'Invalid format',
      name: 'invalidFormat',
      desc: '',
      args: [],
    );
  }

  /// `No Permission`
  String get noPermission {
    return Intl.message(
      'No Permission',
      name: 'noPermission',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `No Items`
  String get noItems {
    return Intl.message('No Items', name: 'noItems', desc: '', args: []);
  }

  /// `Login To`
  String get loginTo {
    return Intl.message('Login To', name: 'loginTo', desc: '', args: []);
  }

  /// `Sign Up To`
  String get signUpTo {
    return Intl.message('Sign Up To', name: 'signUpTo', desc: '', args: []);
  }

  /// `Date of Birth`
  String get dateOfBirth {
    return Intl.message(
      'Date of Birth',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth is required`
  String get requiredDateOfBirth {
    return Intl.message(
      'Date of Birth is required',
      name: 'requiredDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `You are less then 16 years old`
  String get invalidDateOfBirth {
    return Intl.message(
      'You are less then 16 years old',
      name: 'invalidDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `The confirm password is not match`
  String get passwordIsNotMatch {
    return Intl.message(
      'The confirm password is not match',
      name: 'passwordIsNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Verify Your Email`
  String get verifyYourEmail {
    return Intl.message(
      'Verify Your Email',
      name: 'verifyYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please check your provided email we have sent you a verification code. If you do not receive the email within a few minutes, please check your Junk Mail or Spam Folder.`
  String get verifyEmailDesc {
    return Intl.message(
      'Please check your provided email we have sent you a verification code. If you do not receive the email within a few minutes, please check your Junk Mail or Spam Folder.',
      name: 'verifyEmailDesc',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get verificationCode {
    return Intl.message(
      'Verification Code',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verifyCode {
    return Intl.message('Verify Code', name: 'verifyCode', desc: '', args: []);
  }

  /// `Verify Code is required`
  String get verifyCodeIsRequired {
    return Intl.message(
      'Verify Code is required',
      name: 'verifyCodeIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Send Email`
  String get sendEmail {
    return Intl.message('Send Email', name: 'sendEmail', desc: '', args: []);
  }

  /// `Please provide your email address, we will send you instructions to reset your password.`
  String get forgotPassDesc {
    return Intl.message(
      'Please provide your email address, we will send you instructions to reset your password.',
      name: 'forgotPassDesc',
      desc: '',
      args: [],
    );
  }

  /// `Create Profile`
  String get createProfile {
    return Intl.message(
      'Create Profile',
      name: 'createProfile',
      desc: '',
      args: [],
    );
  }

  /// `Business Name`
  String get businessName {
    return Intl.message(
      'Business Name',
      name: 'businessName',
      desc: '',
      args: [],
    );
  }

  /// `Business Name is required`
  String get businessNameIsRequired {
    return Intl.message(
      'Business Name is required',
      name: 'businessNameIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Business Email`
  String get businessEmail {
    return Intl.message(
      'Business Email',
      name: 'businessEmail',
      desc: '',
      args: [],
    );
  }

  /// `About Me`
  String get aboutMe {
    return Intl.message('About Me', name: 'aboutMe', desc: '', args: []);
  }

  /// `Membership Type`
  String get membershipType {
    return Intl.message(
      'Membership Type',
      name: 'membershipType',
      desc: '',
      args: [],
    );
  }

  /// `Tulip (Have a talent to share)`
  String get tulipDesc {
    return Intl.message(
      'Tulip (Have a talent to share)',
      name: 'tulipDesc',
      desc: '',
      args: [],
    );
  }

  /// `Orchid (Get Business Exposure)`
  String get orchidDesc {
    return Intl.message(
      'Orchid (Get Business Exposure)',
      name: 'orchidDesc',
      desc: '',
      args: [],
    );
  }

  /// `Dhalia (Sell through our platform)`
  String get dhaliaDesc {
    return Intl.message(
      'Dhalia (Sell through our platform)',
      name: 'dhaliaDesc',
      desc: '',
      args: [],
    );
  }

  /// `Service Provider`
  String get serviceProvider {
    return Intl.message(
      'Service Provider',
      name: 'serviceProvider',
      desc: '',
      args: [],
    );
  }

  /// `Select Service Provider Type`
  String get selectServiceProviderType {
    return Intl.message(
      'Select Service Provider Type',
      name: 'selectServiceProviderType',
      desc: '',
      args: [],
    );
  }

  /// `Coach/Mentor`
  String get coachMentor {
    return Intl.message(
      'Coach/Mentor',
      name: 'coachMentor',
      desc: '',
      args: [],
    );
  }

  /// `Consultant/Trainer`
  String get consultantTrainer {
    return Intl.message(
      'Consultant/Trainer',
      name: 'consultantTrainer',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

  /// `Coach/Mentor Categories`
  String get coachMentorCategories {
    return Intl.message(
      'Coach/Mentor Categories',
      name: 'coachMentorCategories',
      desc: '',
      args: [],
    );
  }

  /// `Soft Skills/Coaching/Training Categories`
  String get softSkillsCoachingTrainingCategories {
    return Intl.message(
      'Soft Skills/Coaching/Training Categories',
      name: 'softSkillsCoachingTrainingCategories',
      desc: '',
      args: [],
    );
  }

  /// `Consultancy Categories`
  String get consultancyCategories {
    return Intl.message(
      'Consultancy Categories',
      name: 'consultancyCategories',
      desc: '',
      args: [],
    );
  }

  /// `Based In`
  String get basedIn {
    return Intl.message('Based In', name: 'basedIn', desc: '', args: []);
  }

  /// `Service Provided to`
  String get serviceProvidedTo {
    return Intl.message(
      'Service Provided to',
      name: 'serviceProvidedTo',
      desc: '',
      args: [],
    );
  }

  /// `Website/Social Media`
  String get websiteSocialMedia {
    return Intl.message(
      'Website/Social Media',
      name: 'websiteSocialMedia',
      desc: '',
      args: [],
    );
  }

  /// `I agree to`
  String get iAgreeTo {
    return Intl.message('I agree to', name: 'iAgreeTo', desc: '', args: []);
  }

  /// `Terms of Services`
  String get termsOfServices {
    return Intl.message(
      'Terms of Services',
      name: 'termsOfServices',
      desc: '',
      args: [],
    );
  }

  /// `Make my info only visible to admin`
  String get makeMyInfoOnlyVisibleToAdmin {
    return Intl.message(
      'Make my info only visible to admin',
      name: 'makeMyInfoOnlyVisibleToAdmin',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Ok`
  String get ok {
    return Intl.message('Ok', name: 'ok', desc: '', args: []);
  }

  /// `Select Categories`
  String get selectCategories {
    return Intl.message(
      'Select Categories',
      name: 'selectCategories',
      desc: '',
      args: [],
    );
  }

  /// `About Me is required`
  String get aboutMeIsRequired {
    return Intl.message(
      'About Me is required',
      name: 'aboutMeIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Resend Verify Code`
  String get resendVerifyCode {
    return Intl.message(
      'Resend Verify Code',
      name: 'resendVerifyCode',
      desc: '',
      args: [],
    );
  }

  /// `The verify code sent successfully.`
  String get verifyCodeSentSuccess {
    return Intl.message(
      'The verify code sent successfully.',
      name: 'verifyCodeSentSuccess',
      desc: '',
      args: [],
    );
  }

  /// `The new password sent to your email.`
  String get newPasswordSent {
    return Intl.message(
      'The new password sent to your email.',
      name: 'newPasswordSent',
      desc: '',
      args: [],
    );
  }

  /// `Latest`
  String get latest {
    return Intl.message('Latest', name: 'latest', desc: '', args: []);
  }

  /// `Popular`
  String get popular {
    return Intl.message('Popular', name: 'popular', desc: '', args: []);
  }

  /// `My Posts`
  String get myPosts {
    return Intl.message('My Posts', name: 'myPosts', desc: '', args: []);
  }

  /// `Friend Request`
  String get friendRequest {
    return Intl.message(
      'Friend Request',
      name: 'friendRequest',
      desc: '',
      args: [],
    );
  }

  /// `View my profile`
  String get viewMyProfile {
    return Intl.message(
      'View my profile',
      name: 'viewMyProfile',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `MI Services`
  String get miServices {
    return Intl.message('MI Services', name: 'miServices', desc: '', args: []);
  }

  /// `Coaches and Mentors`
  String get coachesAndMentors {
    return Intl.message(
      'Coaches and Mentors',
      name: 'coachesAndMentors',
      desc: '',
      args: [],
    );
  }

  /// `Conslutants And Trainers`
  String get conslutantsAndTrainers {
    return Intl.message(
      'Conslutants And Trainers',
      name: 'conslutantsAndTrainers',
      desc: '',
      args: [],
    );
  }

  /// `Branding Services`
  String get brandingServices {
    return Intl.message(
      'Branding Services',
      name: 'brandingServices',
      desc: '',
      args: [],
    );
  }

  /// `Friends`
  String get friends {
    return Intl.message('Friends', name: 'friends', desc: '', args: []);
  }

  /// `Members`
  String get members {
    return Intl.message('Members', name: 'members', desc: '', args: []);
  }

  /// `MI Forum`
  String get miForum {
    return Intl.message('MI Forum', name: 'miForum', desc: '', args: []);
  }

  /// `Events`
  String get events {
    return Intl.message('Events', name: 'events', desc: '', args: []);
  }

  /// `Shop`
  String get shop {
    return Intl.message('Shop', name: 'shop', desc: '', args: []);
  }

  /// `Post`
  String get post {
    return Intl.message('Post', name: 'post', desc: '', args: []);
  }

  /// `Editorial`
  String get editorial {
    return Intl.message('Editorial', name: 'editorial', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Create Post`
  String get createPost {
    return Intl.message('Create Post', name: 'createPost', desc: '', args: []);
  }

  /// `Create post successfully`
  String get createPostSuccessfully {
    return Intl.message(
      'Create post successfully',
      name: 'createPostSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get online {
    return Intl.message('Online', name: 'online', desc: '', args: []);
  }

  /// `Membership`
  String get membership {
    return Intl.message('Membership', name: 'membership', desc: '', args: []);
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `Photos`
  String get photos {
    return Intl.message('Photos', name: 'photos', desc: '', args: []);
  }

  /// `Videos`
  String get videos {
    return Intl.message('Videos', name: 'videos', desc: '', args: []);
  }

  /// `Editorials`
  String get editorials {
    return Intl.message('Editorials', name: 'editorials', desc: '', args: []);
  }

  /// `Create Editorials`
  String get createEditorials {
    return Intl.message(
      'Create Editorials',
      name: 'createEditorials',
      desc: '',
      args: [],
    );
  }

  /// `Create editorial successfully`
  String get createEditorialSuccessfully {
    return Intl.message(
      'Create editorial successfully',
      name: 'createEditorialSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Add To Cart`
  String get addToCart {
    return Intl.message('Add To Cart', name: 'addToCart', desc: '', args: []);
  }

  /// `Buy Now`
  String get buyNow {
    return Intl.message('Buy Now', name: 'buyNow', desc: '', args: []);
  }

  /// `Flutters`
  String get flutters {
    return Intl.message('Flutters', name: 'flutters', desc: '', args: []);
  }

  /// `Share`
  String get share {
    return Intl.message('Share', name: 'share', desc: '', args: []);
  }

  /// `Comments`
  String get comments {
    return Intl.message('Comments', name: 'comments', desc: '', args: []);
  }

  /// `Write a comment`
  String get writeAComment {
    return Intl.message(
      'Write a comment',
      name: 'writeAComment',
      desc: '',
      args: [],
    );
  }

  /// `Forum`
  String get forum {
    return Intl.message('Forum', name: 'forum', desc: '', args: []);
  }

  /// `Join`
  String get join {
    return Intl.message('Join', name: 'join', desc: '', args: []);
  }

  /// `Oldest`
  String get oldest {
    return Intl.message('Oldest', name: 'oldest', desc: '', args: []);
  }

  /// `Sort By`
  String get sortBy {
    return Intl.message('Sort By', name: 'sortBy', desc: '', args: []);
  }

  /// `Total members`
  String get totalMembers {
    return Intl.message(
      'Total members',
      name: 'totalMembers',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message('Follow', name: 'follow', desc: '', args: []);
  }

  /// `Unfollow`
  String get unFollow {
    return Intl.message('Unfollow', name: 'unFollow', desc: '', args: []);
  }

  /// `Add friend`
  String get addFriend {
    return Intl.message('Add friend', name: 'addFriend', desc: '', args: []);
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Company`
  String get company {
    return Intl.message('Company', name: 'company', desc: '', args: []);
  }

  /// `Country`
  String get country {
    return Intl.message('Country', name: 'country', desc: '', args: []);
  }

  /// `State`
  String get state {
    return Intl.message('State', name: 'state', desc: '', args: []);
  }

  /// `Zip Code`
  String get zipCode {
    return Intl.message('Zip Code', name: 'zipCode', desc: '', args: []);
  }

  /// `Contact Number`
  String get contactNumber {
    return Intl.message(
      'Contact Number',
      name: 'contactNumber',
      desc: '',
      args: [],
    );
  }

  /// `confirm`
  String get confirm {
    return Intl.message('confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Find your ideal Coaches/Mentors`
  String get findYourIdealCoachesMentors {
    return Intl.message(
      'Find your ideal Coaches/Mentors',
      name: 'findYourIdealCoachesMentors',
      desc: '',
      args: [],
    );
  }

  /// `Select Category`
  String get selectCategory {
    return Intl.message(
      'Select Category',
      name: 'selectCategory',
      desc: '',
      args: [],
    );
  }

  /// `Search Name`
  String get searchName {
    return Intl.message('Search Name', name: 'searchName', desc: '', args: []);
  }

  /// `Location`
  String get location {
    return Intl.message('Location', name: 'location', desc: '', args: []);
  }

  /// `Comment Is Require`
  String get requiredComment {
    return Intl.message(
      'Comment Is Require',
      name: 'requiredComment',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Membership Category`
  String get membershipCategory {
    return Intl.message(
      'Membership Category',
      name: 'membershipCategory',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get myProfile {
    return Intl.message('My Profile', name: 'myProfile', desc: '', args: []);
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message('Accept', name: 'accept', desc: '', args: []);
  }

  /// `Reject`
  String get reject {
    return Intl.message('Reject', name: 'reject', desc: '', args: []);
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `miss IndependentDent`
  String get missIndependentDent {
    return Intl.message(
      'miss IndependentDent',
      name: 'missIndependentDent',
      desc: '',
      args: [],
    );
  }

  /// `Pending request`
  String get pendingRequest {
    return Intl.message(
      'Pending request',
      name: 'pendingRequest',
      desc: '',
      args: [],
    );
  }

  /// `Leave`
  String get leave {
    return Intl.message('Leave', name: 'leave', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Title`
  String get title {
    return Intl.message('Title', name: 'title', desc: '', args: []);
  }

  /// `To Date`
  String get toDate {
    return Intl.message('To Date', name: 'toDate', desc: '', args: []);
  }

  /// `From Data`
  String get fromData {
    return Intl.message('From Data', name: 'fromData', desc: '', args: []);
  }

  /// `Enter your  description here`
  String get enterYourDescriptionHere {
    return Intl.message(
      'Enter your  description here',
      name: 'enterYourDescriptionHere',
      desc: '',
      args: [],
    );
  }

  /// `Enter your title here`
  String get enterYourTitleHere {
    return Intl.message(
      'Enter your title here',
      name: 'enterYourTitleHere',
      desc: '',
      args: [],
    );
  }

  /// `Paste video link here`
  String get pasteVideoLinkHere {
    return Intl.message(
      'Paste video link here',
      name: 'pasteVideoLinkHere',
      desc: '',
      args: [],
    );
  }

  /// `Select a video`
  String get selectAVideo {
    return Intl.message(
      'Select a video',
      name: 'selectAVideo',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message('OR', name: 'or', desc: '', args: []);
  }

  /// `Create Editorial`
  String get createEditorial {
    return Intl.message(
      'Create Editorial',
      name: 'createEditorial',
      desc: '',
      args: [],
    );
  }

  /// `Search Events`
  String get searchEvents {
    return Intl.message(
      'Search Events',
      name: 'searchEvents',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Deactivate Account`
  String get deactivateAccount {
    return Intl.message(
      'Deactivate Account',
      name: 'deactivateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Update Profile Successfully`
  String get updateProfileSuccessfully {
    return Intl.message(
      'Update Profile Successfully',
      name: 'updateProfileSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Apply For Services`
  String get applyForServices {
    return Intl.message(
      'Apply For Services',
      name: 'applyForServices',
      desc: '',
      args: [],
    );
  }

  /// `Find Your ideal Consultants/Trainers`
  String get findYourIdealConsultantsTrainers {
    return Intl.message(
      'Find Your ideal Consultants/Trainers',
      name: 'findYourIdealConsultantsTrainers',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Update Product`
  String get updateProduct {
    return Intl.message(
      'Update Product',
      name: 'updateProduct',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Delete Confirmation`
  String get deleteConfirmation {
    return Intl.message(
      'Delete Confirmation',
      name: 'deleteConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete this post?`
  String get areYouSureToDeleteThisPost {
    return Intl.message(
      'Are you sure to delete this post?',
      name: 'areYouSureToDeleteThisPost',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete this comment?`
  String get areYouSureToDeleteThisComment {
    return Intl.message(
      'Are you sure to delete this comment?',
      name: 'areYouSureToDeleteThisComment',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message('Report', name: 'report', desc: '', args: []);
  }

  /// `Report Post`
  String get reportPost {
    return Intl.message('Report Post', name: 'reportPost', desc: '', args: []);
  }

  /// `Report post successfully`
  String get reportPostSuccessfully {
    return Intl.message(
      'Report post successfully',
      name: 'reportPostSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Report comment successfully`
  String get reportCommentSuccessfully {
    return Intl.message(
      'Report comment successfully',
      name: 'reportCommentSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Reason is required`
  String get requiredReason {
    return Intl.message(
      'Reason is required',
      name: 'requiredReason',
      desc: '',
      args: [],
    );
  }

  /// `Write the reason why are you reporting this post`
  String get writeTheReasonWhyAreYouReportingThisPost {
    return Intl.message(
      'Write the reason why are you reporting this post',
      name: 'writeTheReasonWhyAreYouReportingThisPost',
      desc: '',
      args: [],
    );
  }

  /// `Write the reason why are you reporting this comment`
  String get writeTheReasonWhyAreYouReportingThisComment {
    return Intl.message(
      'Write the reason why are you reporting this comment',
      name: 'writeTheReasonWhyAreYouReportingThisComment',
      desc: '',
      args: [],
    );
  }

  /// `Enter Current Password`
  String get enterCurrentPassword {
    return Intl.message(
      'Enter Current Password',
      name: 'enterCurrentPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter New Password`
  String get enterNewPassword {
    return Intl.message(
      'Enter New Password',
      name: 'enterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm New password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to deactivate your account?`
  String get areYouSureToDeactivateYourAccount {
    return Intl.message(
      'Are you sure to deactivate your account?',
      name: 'areYouSureToDeactivateYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Shop Management`
  String get shopManagement {
    return Intl.message(
      'Shop Management',
      name: 'shopManagement',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message('Description', name: 'description', desc: '', args: []);
  }

  /// `Specifications`
  String get specifications {
    return Intl.message(
      'Specifications',
      name: 'specifications',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get weight {
    return Intl.message('Weight', name: 'weight', desc: '', args: []);
  }

  /// `Quantity`
  String get quantity {
    return Intl.message('Quantity', name: 'quantity', desc: '', args: []);
  }

  /// `In stock`
  String get inStock {
    return Intl.message('In stock', name: 'inStock', desc: '', args: []);
  }

  /// `Out of stock`
  String get outOfStock {
    return Intl.message('Out of stock', name: 'outOfStock', desc: '', args: []);
  }

  /// `Order History`
  String get orderHistory {
    return Intl.message(
      'Order History',
      name: 'orderHistory',
      desc: '',
      args: [],
    );
  }

  /// `Order again`
  String get orderAgain {
    return Intl.message('Order again', name: 'orderAgain', desc: '', args: []);
  }

  /// `Status`
  String get status {
    return Intl.message('Status', name: 'status', desc: '', args: []);
  }

  /// `Reply`
  String get reply {
    return Intl.message('Reply', name: 'reply', desc: '', args: []);
  }

  /// `replies`
  String get replies {
    return Intl.message('replies', name: 'replies', desc: '', args: []);
  }

  /// `View all comments`
  String get viewAllComments {
    return Intl.message(
      'View all comments',
      name: 'viewAllComments',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Add Product`
  String get addProduct {
    return Intl.message('Add Product', name: 'addProduct', desc: '', args: []);
  }

  /// `Select the quantity`
  String get selectTheQuantity {
    return Intl.message(
      'Select the quantity',
      name: 'selectTheQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Order Management`
  String get orderManagement {
    return Intl.message(
      'Order Management',
      name: 'orderManagement',
      desc: '',
      args: [],
    );
  }

  /// `Sku`
  String get sku {
    return Intl.message('Sku', name: 'sku', desc: '', args: []);
  }

  /// `Price`
  String get price {
    return Intl.message('Price', name: 'price', desc: '', args: []);
  }

  /// `Price is required`
  String get requiredPrice {
    return Intl.message(
      'Price is required',
      name: 'requiredPrice',
      desc: '',
      args: [],
    );
  }

  /// `Weight is required`
  String get requiredWeight {
    return Intl.message(
      'Weight is required',
      name: 'requiredWeight',
      desc: '',
      args: [],
    );
  }

  /// `Description is required`
  String get requiredDescription {
    return Intl.message(
      'Description is required',
      name: 'requiredDescription',
      desc: '',
      args: [],
    );
  }

  /// `Quantity is required`
  String get requiredQuantity {
    return Intl.message(
      'Quantity is required',
      name: 'requiredQuantity',
      desc: '',
      args: [],
    );
  }

  /// `Sku is required`
  String get requiredSku {
    return Intl.message(
      'Sku is required',
      name: 'requiredSku',
      desc: '',
      args: [],
    );
  }

  /// `Name is required`
  String get requiredName {
    return Intl.message(
      'Name is required',
      name: 'requiredName',
      desc: '',
      args: [],
    );
  }

  /// `Category is required`
  String get requiredCategory {
    return Intl.message(
      'Category is required',
      name: 'requiredCategory',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message('Upload', name: 'upload', desc: '', args: []);
  }

  /// `Update`
  String get update {
    return Intl.message('Update', name: 'update', desc: '', args: []);
  }

  /// `Products`
  String get products {
    return Intl.message('Products', name: 'products', desc: '', args: []);
  }

  /// `Cart`
  String get cart {
    return Intl.message('Cart', name: 'cart', desc: '', args: []);
  }

  /// `Order Successfully!`
  String get orderSuccessfully {
    return Intl.message(
      'Order Successfully!',
      name: 'orderSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message('Checkout', name: 'checkout', desc: '', args: []);
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Product added to cart successfully!`
  String get productAddedToCartSuccesfully {
    return Intl.message(
      'Product added to cart successfully!',
      name: 'productAddedToCartSuccesfully',
      desc: '',
      args: [],
    );
  }

  /// `added to cart successfully!`
  String get addedToCartSuccesfully {
    return Intl.message(
      'added to cart successfully!',
      name: 'addedToCartSuccesfully',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get items {
    return Intl.message('Items', name: 'items', desc: '', args: []);
  }

  /// `Customer Information`
  String get customerInformation {
    return Intl.message(
      'Customer Information',
      name: 'customerInformation',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Information`
  String get deliveryInformation {
    return Intl.message(
      'Delivery Information',
      name: 'deliveryInformation',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message('City', name: 'city', desc: '', args: []);
  }

  /// `Order Now`
  String get orderNow {
    return Intl.message('Order Now', name: 'orderNow', desc: '', args: []);
  }

  /// `Cash on delivery`
  String get cashOnDelivery {
    return Intl.message(
      'Cash on delivery',
      name: 'cashOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is required`
  String get requiredPhoneNumber {
    return Intl.message(
      'Phone number is required',
      name: 'requiredPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone number`
  String get invalidPhoneNumber {
    return Intl.message(
      'Invalid phone number',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Country is required`
  String get requiredCountry {
    return Intl.message(
      'Country is required',
      name: 'requiredCountry',
      desc: '',
      args: [],
    );
  }

  /// `State is required`
  String get requiredState {
    return Intl.message(
      'State is required',
      name: 'requiredState',
      desc: '',
      args: [],
    );
  }

  /// `City is required`
  String get requiredCity {
    return Intl.message(
      'City is required',
      name: 'requiredCity',
      desc: '',
      args: [],
    );
  }

  /// `Address is required`
  String get requiredAddress {
    return Intl.message(
      'Address is required',
      name: 'requiredAddress',
      desc: '',
      args: [],
    );
  }

  /// `Zip code is required`
  String get requiredZipCode {
    return Intl.message(
      'Zip code is required',
      name: 'requiredZipCode',
      desc: '',
      args: [],
    );
  }

  /// `The quantity must be greater than zero`
  String get theQuantityMustBeGreaterThanZero {
    return Intl.message(
      'The quantity must be greater than zero',
      name: 'theQuantityMustBeGreaterThanZero',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message('Date', name: 'date', desc: '', args: []);
  }

  /// `Category`
  String get category {
    return Intl.message('Category', name: 'category', desc: '', args: []);
  }

  /// `The weight must be greater than zero`
  String get theWeightMustBeGreaterThanZero {
    return Intl.message(
      'The weight must be greater than zero',
      name: 'theWeightMustBeGreaterThanZero',
      desc: '',
      args: [],
    );
  }

  /// `This product was deleted !`
  String get thisProductWasDeleted {
    return Intl.message(
      'This product was deleted !',
      name: 'thisProductWasDeleted',
      desc: '',
      args: [],
    );
  }

  /// `The price must be greater than zero`
  String get thePriceMustBeGreaterThanZero {
    return Intl.message(
      'The price must be greater than zero',
      name: 'thePriceMustBeGreaterThanZero',
      desc: '',
      args: [],
    );
  }

  /// `Delete Product`
  String get deleteProduct {
    return Intl.message(
      'Delete Product',
      name: 'deleteProduct',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this product ?`
  String get areYouSureYouWantToDeleteThisProduct {
    return Intl.message(
      'Are you sure you want to delete this product ?',
      name: 'areYouSureYouWantToDeleteThisProduct',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message('Error', name: 'error', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
