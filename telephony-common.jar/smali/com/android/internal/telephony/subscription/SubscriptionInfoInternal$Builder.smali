.class public Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
.super Ljava/lang/Object;
.source "SubscriptionInfoInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlertSoundDuration:I

.field private blacklist mAllowedNetworkTypesForReasons:Ljava/lang/String;

.field private blacklist mAreUiccApplicationsEnabled:I

.field private blacklist mCardId:I

.field private blacklist mCardString:Ljava/lang/String;

.field private blacklist mCarrierConfigAccessRules:[B

.field private blacklist mCarrierId:I

.field private blacklist mCarrierName:Ljava/lang/String;

.field private blacklist mCountryIso:Ljava/lang/String;

.field private blacklist mDataRoaming:I

.field private blacklist mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

.field private blacklist mDeviceToDeviceStatusSharingPreference:I

.field private blacklist mDisplayName:Ljava/lang/String;

.field private blacklist mDisplayNameSource:I

.field private blacklist mEhplmns:Ljava/lang/String;

.field private blacklist mEnabledMobileDataPolicies:Ljava/lang/String;

.field private blacklist mGroupOwner:Ljava/lang/String;

.field private blacklist mGroupUuid:Ljava/lang/String;

.field private blacklist mHplmns:Ljava/lang/String;

.field private blacklist mIccId:Ljava/lang/String;

.field private blacklist mIconTint:I

.field private blacklist mId:I

.field private blacklist mImsi:Ljava/lang/String;

.field private blacklist mIsAlertSpeechEnabled:I

.field private blacklist mIsAlertVibrationEnabled:I

.field private blacklist mIsAmberAlertEnabled:I

.field private blacklist mIsAreaInfoMessageEnabled:I

.field private blacklist mIsCrossSimCallingEnabled:I

.field private blacklist mIsEmbedded:I

.field private blacklist mIsEmergencyAlertEnabled:I

.field private blacklist mIsEnhanced4GModeEnabled:I

.field private blacklist mIsEtwsTestAlertEnabled:I

.field private blacklist mIsExtremeThreatAlertEnabled:I

.field private blacklist mIsGroupDisabled:Z

.field private blacklist mIsNrAdvancedCallingEnabled:I

.field private blacklist mIsOnlyNonTerrestrialNetwork:I

.field private blacklist mIsOpportunistic:I

.field private blacklist mIsOptOutDialogEnabled:I

.field private blacklist mIsRcsUceEnabled:I

.field private blacklist mIsRemovableEmbedded:I

.field private blacklist mIsSatelliteAttachEnabledForCarrier:I

.field private blacklist mIsSatelliteESOSSupported:I

.field private blacklist mIsSatelliteEnabled:I

.field private blacklist mIsSatelliteEntitlementStatus:I

.field private blacklist mIsSatelliteProvisionedForNonIpDatagram:I

.field private blacklist mIsSevereThreatAlertEnabled:I

.field private blacklist mIsTestAlertEnabled:I

.field private blacklist mIsVideoTelephonyEnabled:I

.field private blacklist mIsVoImsOptInEnabled:I

.field private blacklist mIsWifiCallingEnabled:I

.field private blacklist mIsWifiCallingEnabledForRoaming:I

.field private blacklist mLastUsedTPMessageReference:I

.field private blacklist mMcc:Ljava/lang/String;

.field private blacklist mMnc:Ljava/lang/String;

.field private blacklist mNativeAccessRules:[B

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mNumberFromCarrier:Ljava/lang/String;

.field private blacklist mNumberFromIms:Ljava/lang/String;

.field private blacklist mPortIndex:I

.field private blacklist mProfileClass:I

.field private blacklist mRcsConfig:[B

.field private blacklist mReminderInterval:I

.field private blacklist mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

.field private blacklist mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

.field private blacklist mSatelliteEntitlementPlmns:Ljava/lang/String;

.field private blacklist mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

.field private blacklist mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

.field private blacklist mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

.field private blacklist mServiceCapabilities:I

.field private blacklist mSimSlotIndex:I

.field private blacklist mTransferStatus:I

.field private blacklist mType:I

.field private blacklist mUsageSetting:I

.field private blacklist mUserId:I

.field private blacklist mWifiCallingMode:I

.field private blacklist mWifiCallingModeForRoaming:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlertSoundDuration(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAlertSoundDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedNetworkTypesForReasons(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAreUiccApplicationsEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAreUiccApplicationsEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCardString(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierConfigAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierConfigAccessRules:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountryIso(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDataRoaming:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceToDeviceStatusSharingContacts(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceToDeviceStatusSharingPreference(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingPreference:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayNameSource(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayNameSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEhplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEhplmns:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnabledMobileDataPolicies(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEnabledMobileDataPolicies:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupOwner(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGroupUuid(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupUuid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mHplmns:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIccId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconTint(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIconTint:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsi(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAlertSpeechEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertSpeechEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAlertVibrationEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertVibrationEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAmberAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAmberAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAreaInfoMessageEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAreaInfoMessageEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCrossSimCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsCrossSimCallingEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmbedded:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergencyAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmergencyAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEnhanced4GModeEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEnhanced4GModeEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEtwsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEtwsTestAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsExtremeThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsExtremeThreatAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsGroupDisabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsGroupDisabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNrAdvancedCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsNrAdvancedCallingEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOnlyNonTerrestrialNetwork:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOpportunistic(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOpportunistic:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOptOutDialogEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOptOutDialogEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRcsUceEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRcsUceEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRemovableEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteAttachEnabledForCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteAttachEnabledForCarrier:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteESOSSupported(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteESOSSupported:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteEntitlementStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEntitlementStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSatelliteProvisionedForNonIpDatagram(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteProvisionedForNonIpDatagram:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSevereThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSevereThreatAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsTestAlertEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVideoTelephonyEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVideoTelephonyEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVoImsOptInEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVoImsOptInEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWifiCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabled:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWifiCallingEnabledForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabledForRoaming:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastUsedTPMessageReference(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mLastUsedTPMessageReference:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMcc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMnc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumber(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumberFromCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromCarrier:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumberFromIms(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromIms:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mPortIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProfileClass(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mProfileClass:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRcsConfig(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mRcsConfig:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReminderInterval(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mReminderInterval:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementBarredPlmnsList(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementDataPlanForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementPlmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEntitlementServicesForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatellitePlmnsDataServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatellitePlmnsVoiceServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mServiceCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimSlotIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSimSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mTransferStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsageSetting(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUsageSetting:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiCallingMode(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiCallingModeForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingModeForRoaming:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 5

    .line 2083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1641
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mId:I

    .line 1646
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIccId:Ljava/lang/String;

    .line 1654
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSimSlotIndex:I

    .line 1660
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayName:Ljava/lang/String;

    .line 1667
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierName:Ljava/lang/String;

    .line 1673
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayNameSource:I

    const/4 v2, 0x0

    .line 1679
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIconTint:I

    .line 1684
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumber:Ljava/lang/String;

    .line 1692
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDataRoaming:I

    .line 1697
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMcc:Ljava/lang/String;

    .line 1703
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMnc:Ljava/lang/String;

    .line 1709
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEhplmns:Ljava/lang/String;

    .line 1715
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mHplmns:Ljava/lang/String;

    .line 1721
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmbedded:I

    .line 1726
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardString:Ljava/lang/String;

    .line 1733
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    .line 1740
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierConfigAccessRules:[B

    .line 1749
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    const/4 v3, 0x1

    .line 1754
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsExtremeThreatAlertEnabled:I

    .line 1759
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSevereThreatAlertEnabled:I

    .line 1764
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAmberAlertEnabled:I

    .line 1769
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmergencyAlertEnabled:I

    const/4 v4, 0x4

    .line 1774
    iput v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAlertSoundDuration:I

    .line 1779
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mReminderInterval:I

    .line 1784
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertVibrationEnabled:I

    .line 1789
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertSpeechEnabled:I

    .line 1794
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEtwsTestAlertEnabled:I

    .line 1799
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAreaInfoMessageEnabled:I

    .line 1804
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsTestAlertEnabled:I

    .line 1809
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOptOutDialogEnabled:I

    .line 1814
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEnhanced4GModeEnabled:I

    .line 1819
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVideoTelephonyEnabled:I

    .line 1824
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabled:I

    .line 1829
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingMode:I

    .line 1835
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingModeForRoaming:I

    .line 1841
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabledForRoaming:I

    .line 1846
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOpportunistic:I

    .line 1851
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupUuid:Ljava/lang/String;

    .line 1857
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCountryIso:Ljava/lang/String;

    .line 1865
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierId:I

    .line 1873
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mProfileClass:I

    .line 1879
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mType:I

    .line 1885
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1891
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEnabledMobileDataPolicies:Ljava/lang/String;

    .line 1897
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mImsi:Ljava/lang/String;

    .line 1903
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAreUiccApplicationsEnabled:I

    .line 1909
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRcsUceEnabled:I

    .line 1914
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsCrossSimCallingEnabled:I

    .line 1919
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mRcsConfig:[B

    .line 1927
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    .line 1932
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingPreference:I

    .line 1939
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVoImsOptInEnabled:I

    .line 1944
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    .line 1950
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsNrAdvancedCallingEnabled:I

    .line 1955
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromCarrier:Ljava/lang/String;

    .line 1961
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromIms:Ljava/lang/String;

    .line 1967
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mPortIndex:I

    .line 1972
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUsageSetting:I

    .line 1978
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mLastUsedTPMessageReference:I

    const/16 v0, -0x2710

    .line 1983
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUserId:I

    .line 1988
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEnabled:I

    .line 1993
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteAttachEnabledForCarrier:I

    .line 1998
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOnlyNonTerrestrialNetwork:I

    const/4 v0, -0x2

    .line 2004
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardId:I

    .line 2027
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEntitlementStatus:I

    .line 2032
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    .line 2038
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteESOSSupported:I

    .line 2043
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteProvisionedForNonIpDatagram:I

    .line 2048
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    .line 2055
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    .line 2062
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    .line 2069
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    .line 2076
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)V
    .locals 5

    .line 2091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1641
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mId:I

    .line 1646
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIccId:Ljava/lang/String;

    .line 1654
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSimSlotIndex:I

    .line 1660
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayName:Ljava/lang/String;

    .line 1667
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierName:Ljava/lang/String;

    .line 1673
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayNameSource:I

    const/4 v2, 0x0

    .line 1679
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIconTint:I

    .line 1684
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumber:Ljava/lang/String;

    .line 1692
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDataRoaming:I

    .line 1697
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMcc:Ljava/lang/String;

    .line 1703
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMnc:Ljava/lang/String;

    .line 1709
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEhplmns:Ljava/lang/String;

    .line 1715
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mHplmns:Ljava/lang/String;

    .line 1721
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmbedded:I

    .line 1726
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardString:Ljava/lang/String;

    .line 1733
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    .line 1740
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierConfigAccessRules:[B

    .line 1749
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    const/4 v3, 0x1

    .line 1754
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsExtremeThreatAlertEnabled:I

    .line 1759
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSevereThreatAlertEnabled:I

    .line 1764
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAmberAlertEnabled:I

    .line 1769
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmergencyAlertEnabled:I

    const/4 v4, 0x4

    .line 1774
    iput v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAlertSoundDuration:I

    .line 1779
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mReminderInterval:I

    .line 1784
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertVibrationEnabled:I

    .line 1789
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertSpeechEnabled:I

    .line 1794
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEtwsTestAlertEnabled:I

    .line 1799
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAreaInfoMessageEnabled:I

    .line 1804
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsTestAlertEnabled:I

    .line 1809
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOptOutDialogEnabled:I

    .line 1814
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEnhanced4GModeEnabled:I

    .line 1819
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVideoTelephonyEnabled:I

    .line 1824
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabled:I

    .line 1829
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingMode:I

    .line 1835
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingModeForRoaming:I

    .line 1841
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabledForRoaming:I

    .line 1846
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOpportunistic:I

    .line 1851
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupUuid:Ljava/lang/String;

    .line 1857
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCountryIso:Ljava/lang/String;

    .line 1865
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierId:I

    .line 1873
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mProfileClass:I

    .line 1879
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mType:I

    .line 1885
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1891
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEnabledMobileDataPolicies:Ljava/lang/String;

    .line 1897
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mImsi:Ljava/lang/String;

    .line 1903
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAreUiccApplicationsEnabled:I

    .line 1909
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRcsUceEnabled:I

    .line 1914
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsCrossSimCallingEnabled:I

    .line 1919
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mRcsConfig:[B

    .line 1927
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    .line 1932
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingPreference:I

    .line 1939
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVoImsOptInEnabled:I

    .line 1944
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    .line 1950
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsNrAdvancedCallingEnabled:I

    .line 1955
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromCarrier:Ljava/lang/String;

    .line 1961
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromIms:Ljava/lang/String;

    .line 1967
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mPortIndex:I

    .line 1972
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUsageSetting:I

    .line 1978
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mLastUsedTPMessageReference:I

    const/16 v0, -0x2710

    .line 1983
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUserId:I

    .line 1988
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEnabled:I

    .line 1993
    iput v3, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteAttachEnabledForCarrier:I

    .line 1998
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOnlyNonTerrestrialNetwork:I

    const/4 v0, -0x2

    .line 2004
    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardId:I

    .line 2027
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEntitlementStatus:I

    .line 2032
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    .line 2038
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteESOSSupported:I

    .line 2043
    iput v2, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteProvisionedForNonIpDatagram:I

    .line 2048
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    .line 2055
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    .line 2062
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    .line 2069
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    .line 2076
    iput-object v1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    .line 2092
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mId:I

    .line 2093
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIccId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIccId:Ljava/lang/String;

    .line 2094
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSimSlotIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSimSlotIndex:I

    .line 2095
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmDisplayName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayName:Ljava/lang/String;

    .line 2096
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCarrierName(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierName:Ljava/lang/String;

    .line 2097
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmDisplayNameSource(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayNameSource:I

    .line 2098
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIconTint(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIconTint:I

    .line 2099
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmNumber(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumber:Ljava/lang/String;

    .line 2100
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmDataRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDataRoaming:I

    .line 2101
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmMcc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMcc:Ljava/lang/String;

    .line 2102
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmMnc(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMnc:Ljava/lang/String;

    .line 2103
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmEhplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEhplmns:Ljava/lang/String;

    .line 2104
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmHplmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mHplmns:Ljava/lang/String;

    .line 2105
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmbedded:I

    .line 2106
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCardString(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardString:Ljava/lang/String;

    .line 2107
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmNativeAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    .line 2108
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCarrierConfigAccessRules(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierConfigAccessRules:[B

    .line 2109
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsRemovableEmbedded(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    .line 2110
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsExtremeThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsExtremeThreatAlertEnabled:I

    .line 2111
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSevereThreatAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSevereThreatAlertEnabled:I

    .line 2112
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsAmberAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAmberAlertEnabled:I

    .line 2113
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsEmergencyAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmergencyAlertEnabled:I

    .line 2114
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmAlertSoundDuration(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAlertSoundDuration:I

    .line 2115
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmReminderInterval(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mReminderInterval:I

    .line 2116
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsAlertVibrationEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertVibrationEnabled:I

    .line 2117
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsAlertSpeechEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertSpeechEnabled:I

    .line 2118
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsEtwsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEtwsTestAlertEnabled:I

    .line 2119
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsAreaInfoMessageEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAreaInfoMessageEnabled:I

    .line 2120
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsTestAlertEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsTestAlertEnabled:I

    .line 2121
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsOptOutDialogEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOptOutDialogEnabled:I

    .line 2122
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsEnhanced4GModeEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEnhanced4GModeEnabled:I

    .line 2123
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsVideoTelephonyEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVideoTelephonyEnabled:I

    .line 2124
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsWifiCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabled:I

    .line 2125
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmWifiCallingMode(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingMode:I

    .line 2126
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmWifiCallingModeForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingModeForRoaming:I

    .line 2127
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsWifiCallingEnabledForRoaming(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabledForRoaming:I

    .line 2128
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsOpportunistic(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOpportunistic:I

    .line 2129
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmGroupUuid(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupUuid:Ljava/lang/String;

    .line 2130
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCountryIso(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCountryIso:Ljava/lang/String;

    .line 2131
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierId:I

    .line 2132
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmProfileClass(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mProfileClass:I

    .line 2133
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmType(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mType:I

    .line 2134
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmGroupOwner(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupOwner:Ljava/lang/String;

    .line 2135
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmEnabledMobileDataPolicies(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEnabledMobileDataPolicies:Ljava/lang/String;

    .line 2136
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmImsi(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mImsi:Ljava/lang/String;

    .line 2137
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmAreUiccApplicationsEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAreUiccApplicationsEnabled:I

    .line 2138
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsRcsUceEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRcsUceEnabled:I

    .line 2139
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsCrossSimCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsCrossSimCallingEnabled:I

    .line 2140
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmRcsConfig(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mRcsConfig:[B

    .line 2141
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmAllowedNetworkTypesForReasons(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    .line 2142
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmDeviceToDeviceStatusSharingPreference(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingPreference:I

    .line 2143
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsVoImsOptInEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVoImsOptInEnabled:I

    .line 2144
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmDeviceToDeviceStatusSharingContacts(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    .line 2145
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsNrAdvancedCallingEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsNrAdvancedCallingEnabled:I

    .line 2146
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmNumberFromCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromCarrier:Ljava/lang/String;

    .line 2147
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmNumberFromIms(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromIms:Ljava/lang/String;

    .line 2148
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmPortIndex(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mPortIndex:I

    .line 2149
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmUsageSetting(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUsageSetting:I

    .line 2150
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getLastUsedTPMessageReference()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mLastUsedTPMessageReference:I

    .line 2151
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmUserId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUserId:I

    .line 2152
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSatelliteEnabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEnabled:I

    .line 2153
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSatelliteAttachEnabledForCarrier(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteAttachEnabledForCarrier:I

    .line 2154
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsOnlyNonTerrestrialNetwork(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOnlyNonTerrestrialNetwork:I

    .line 2156
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmCardId(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardId:I

    .line 2157
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsGroupDisabled(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsGroupDisabled:Z

    .line 2158
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mServiceCapabilities:I

    .line 2159
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmTransferStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mTransferStatus:I

    .line 2160
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSatelliteEntitlementStatus(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEntitlementStatus:I

    .line 2161
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatelliteEntitlementPlmns(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    .line 2162
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSatelliteESOSSupported(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteESOSSupported:I

    .line 2163
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmIsSatelliteProvisionedForNonIpDatagram(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteProvisionedForNonIpDatagram:I

    .line 2164
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatelliteEntitlementBarredPlmnsList(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    .line 2165
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatelliteEntitlementDataPlanForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    .line 2166
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatelliteEntitlementServicesForPlmn(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    .line 2167
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatellitePlmnsDataServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    .line 2168
    invoke-static {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->-$$Nest$fgetmSatellitePlmnsVoiceServicePolicy(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;
    .locals 2

    .line 3171
    new-instance v0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;-><init>(Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal-IA;)V

    return-object v0
.end method

.method public blacklist setAllowedNetworkTypesForReasons(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2894
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2895
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAllowedNetworkTypesForReasons:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCardId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3071
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardId:I

    return-object p0
.end method

.method public blacklist setCardString(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2378
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCarrierConfigAccessRules([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2426
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2427
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierConfigAccessRules:[B

    return-object p0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2760
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setCarrierName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2237
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCellBroadcastAlertReminderInterval(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2542
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mReminderInterval:I

    return-object p0
.end method

.method public blacklist setCellBroadcastAlertSoundDuration(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2530
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAlertSoundDuration:I

    return-object p0
.end method

.method public blacklist setCellBroadcastAlertSpeechEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2570
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertSpeechEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastAlertVibrationEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2556
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAlertVibrationEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastAmberAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2503
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAmberAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastAreaInfoMessageEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2598
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsAreaInfoMessageEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastEmergencyAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2517
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmergencyAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastEtwsTestAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2584
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEtwsTestAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastExtremeThreatAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2475
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsExtremeThreatAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastOptOutDialogEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2626
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOptOutDialogEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastSevereThreatAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2489
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSevereThreatAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCellBroadcastTestAlertEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2612
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsTestAlertEnabled:I

    return-object p0
.end method

.method public blacklist setCountryIso(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2745
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2746
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCrossSimCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2864
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsCrossSimCallingEnabled:I

    return-object p0
.end method

.method public blacklist setDataRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2294
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDataRoaming:I

    return-object p0
.end method

.method public blacklist setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2933
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2934
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingContacts:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDeviceToDeviceStatusSharingPreference(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2907
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDeviceToDeviceStatusSharingPreference:I

    return-object p0
.end method

.method public blacklist setDisplayName(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDisplayNameSource(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2252
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mDisplayNameSource:I

    return-object p0
.end method

.method public blacklist setEhplmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2335
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2336
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEhplmns:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setEmbedded(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2363
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEmbedded:I

    return-object p0
.end method

.method public blacklist setEnabledMobileDataPolicies(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2811
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2812
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mEnabledMobileDataPolicies:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setEnhanced4GModeEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2639
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsEnhanced4GModeEnabled:I

    return-object p0
.end method

.method public blacklist setGroupDisabled(Z)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3086
    iput-boolean p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsGroupDisabled:Z

    return-object p0
.end method

.method public blacklist setGroupOwner(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2798
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setGroupUuid(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2732
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2733
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mGroupUuid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setHplmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2349
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mHplmns:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIccId(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2194
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIconTint(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2265
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIconTint:I

    return-object p0
.end method

.method public blacklist setId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2180
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mId:I

    return-object p0
.end method

.method public blacklist setImsi(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2824
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2825
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIsSatelliteProvisionedForNonIpDatagram(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3161
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteProvisionedForNonIpDatagram:I

    return-object p0
.end method

.method public blacklist setLastUsedTPMessageReference(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3009
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mLastUsedTPMessageReference:I

    return-object p0
.end method

.method public blacklist setMcc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setMnc(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2321
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNativeAccessRules(Ljava/util/List;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)",
            "Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;"
        }
    .end annotation

    .line 2408
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2409
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2410
    new-array v0, v0, [Landroid/telephony/UiccAccessRule;

    .line 2411
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/UiccAccessRule;

    .line 2410
    invoke-static {p1}, Landroid/telephony/UiccAccessRule;->encodeRules([Landroid/telephony/UiccAccessRule;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    :cond_0
    return-object p0
.end method

.method public blacklist setNativeAccessRules([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2393
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNativeAccessRules:[B

    return-object p0
.end method

.method public blacklist setNrAdvancedCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2946
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsNrAdvancedCallingEnabled:I

    return-object p0
.end method

.method public blacklist setNumber(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2278
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNumberFromCarrier(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2958
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2959
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromCarrier:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNumberFromIms(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2971
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2972
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mNumberFromIms:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setOnlyNonTerrestrialNetwork(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3058
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOnlyNonTerrestrialNetwork:I

    return-object p0
.end method

.method public blacklist setOpportunistic(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2719
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsOpportunistic:I

    return-object p0
.end method

.method public blacklist setPortIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2984
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mPortIndex:I

    return-object p0
.end method

.method public blacklist setProfileClass(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2774
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mProfileClass:I

    return-object p0
.end method

.method public blacklist setRcsConfig([B)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2876
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2877
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mRcsConfig:[B

    return-object p0
.end method

.method public blacklist setRcsUceEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2851
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRcsUceEnabled:I

    return-object p0
.end method

.method public blacklist setRemovableEmbedded(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2461
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    return-object p0
.end method

.method public blacklist setRemovableEmbedded(Z)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2444
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsRemovableEmbedded:I

    return-object p0
.end method

.method public blacklist setSatelliteAttachEnabledForCarrier(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3045
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteAttachEnabledForCarrier:I

    return-object p0
.end method

.method public blacklist setSatelliteESOSSupported(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3147
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteESOSSupported:I

    return-object p0
.end method

.method public blacklist setSatelliteEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3032
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEnabled:I

    return-object p0
.end method

.method public blacklist setSatelliteEntitlementBarredPlmnsList(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3183
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementBarredPlmnsList:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatelliteEntitlementDataPlanForPlmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3196
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementDataPlanForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatelliteEntitlementPlmnServiceTypes(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3210
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementServicesForPlmn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatelliteEntitlementPlmns(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3134
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatelliteEntitlementPlmns:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatelliteEntitlementStatus(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3121
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsSatelliteEntitlementStatus:I

    return-object p0
.end method

.method public blacklist setSatellitePlmnsDataServicePolicy(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3224
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsDataServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatellitePlmnsVoiceServicePolicy(Ljava/lang/String;)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3238
    iput-object p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSatellitePlmnsVoiceServicePolicy:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setServiceCapabilities(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3096
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mServiceCapabilities:I

    return-object p0
.end method

.method public blacklist setSimSlotIndex(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2208
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mSimSlotIndex:I

    return-object p0
.end method

.method public blacklist setTransferStatus(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3108
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mTransferStatus:I

    return-object p0
.end method

.method public blacklist setType(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2786
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mType:I

    return-object p0
.end method

.method public blacklist setUiccApplicationsEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2838
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mAreUiccApplicationsEnabled:I

    return-object p0
.end method

.method public blacklist setUsageSetting(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2996
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUsageSetting:I

    return-object p0
.end method

.method public blacklist setUserId(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 3021
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mUserId:I

    return-object p0
.end method

.method public blacklist setVideoTelephonyEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2652
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVideoTelephonyEnabled:I

    return-object p0
.end method

.method public blacklist setVoImsOptInEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2919
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsVoImsOptInEnabled:I

    return-object p0
.end method

.method public blacklist setWifiCallingEnabled(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2666
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabled:I

    return-object p0
.end method

.method public blacklist setWifiCallingEnabledForRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2707
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mIsWifiCallingEnabledForRoaming:I

    return-object p0
.end method

.method public blacklist setWifiCallingMode(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2679
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingMode:I

    return-object p0
.end method

.method public blacklist setWifiCallingModeForRoaming(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;
    .locals 0

    .line 2693
    iput p1, p0, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal$Builder;->mWifiCallingModeForRoaming:I

    return-object p0
.end method
