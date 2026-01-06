.class public Lcom/android/internal/telephony/SemCallTrackerHelper;
.super Ljava/lang/Object;
.source "SemCallTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;
    }
.end annotation


# static fields
.field private static final blacklist FACTORY_SIM_IMSI:[Ljava/lang/String;

.field private static final blacklist FILTER_EXTRAS:[Ljava/lang/String;

.field private static blacklist mIsCmcSdEnabled:Z

.field private static final blacklist sHasCallAttributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

.field private final blacklist mImsCallListLock:Ljava/lang/Object;

.field private blacklist mLastNitzSignal:Lcom/android/internal/telephony/NitzSignal;

.field private blacklist mLastTimeZoneId:Ljava/lang/String;

.field private blacklist mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

.field private blacklist mOldImsCallList:Lcom/android/internal/telephony/ImsCallList;

.field blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    .line 55
    const-string v5, "android.telecom.extra.CALL_TELECOM_ROUTING_START_TIME_MILLIS"

    const-string v6, "android.telecom.extra.CALL_TELECOM_ROUTING_END_TIME_MILLIS"

    const-string v0, "selectPhoneAccountAccounts"

    const-string v1, "com.samsung.android.contact.extra.USER_SELECTED_CONTACT_ID"

    const-string v2, "com.samsung.android.contact.extra.USER_SELECTED_CONTACT_NAME"

    const-string v3, "com.samsung.telecom.extra.CALL_BACK_PHONE_ACCOUNT_HANDLE"

    const-string v4, "com.samsung.telecom.extra.ORIGINAL_CALL_INTENT"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCallTrackerHelper;->FILTER_EXTRAS:[Ljava/lang/String;

    .line 95
    invoke-static {}, Lcom/android/internal/telephony/SemCallTrackerHelper;->createHasCallAttributeMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCallTrackerHelper;->sHasCallAttributeMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 102
    sput-boolean v0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mIsCmcSdEnabled:Z

    .line 728
    const-string v0, "520360110000010"

    const-string v1, "512010123456789"

    const-string v2, "001010123456789"

    const-string v3, "999999999999999"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemCallTrackerHelper;->FACTORY_SIM_IMSI:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/internal/telephony/ImsCallList;

    invoke-direct {v0}, Lcom/android/internal/telephony/ImsCallList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mOldImsCallList:Lcom/android/internal/telephony/ImsCallList;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/ImsCallList;

    invoke-direct {v0}, Lcom/android/internal/telephony/ImsCallList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mImsCallListLock:Ljava/lang/Object;

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/SemAssistedDialingHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

    return-void
.end method

.method public static blacklist callConnectGateMessage(Lcom/android/internal/telephony/DriverCall$State;Lcom/android/internal/telephony/Call$State;)V
    .locals 1

    .line 961
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_1

    :cond_0
    sget-object p1, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne p0, p1, :cond_1

    .line 962
    const-string p0, "GATE"

    const-string p1, "<GATE-M>CALL_CONNECTED</GATE-M>"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static blacklist callEndGateMessage(ILcom/android/internal/telephony/Call$State;)V
    .locals 1

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x31

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x26

    if-eq p0, v0, :cond_0

    const/16 v0, 0x39

    if-eq p0, v0, :cond_0

    const v0, 0xffff

    if-ne p0, v0, :cond_2

    .line 972
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GATE LOG - callState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 973
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    const-string v0, "GATE"

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, p0, :cond_1

    goto :goto_0

    .line 976
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, p0, :cond_2

    .line 977
    const-string p0, "<GATE-M>CALL_DROPPED</GATE-M>"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 975
    :cond_3
    :goto_0
    const-string p0, "<GATE-M>CALL_NETWORK_ERROR</GATE-M>"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist checkEmergencyCallRedirectToNormalCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 806
    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->checkEmergencyCallRedirectToNormalCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkEmergencyCallRedirectToNormalCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 810
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->checkEmergencyCallRedirectToNormalCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZZLjava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method public static blacklist checkEmergencyCallRedirectToNormalCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZZLjava/lang/StringBuilder;)Z
    .locals 10

    .line 815
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 817
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->sim_state()Ljava/util/List;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 818
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_17

    const-string v2, "PIN_REQUIRED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 824
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 825
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkEmergencyCallRedirectToNormalCall - No redirect. phoneType: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v3

    .line 829
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v2

    .line 830
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkEmergencyCallRedirectToNormalCall - svc state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isVowifiEanbled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 832
    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-eqz v5, :cond_2

    .line 833
    const-string v4, ""

    .line 836
    :cond_2
    const-string v5, "ril.simoperator"

    const-string v6, "ETC"

    invoke-static {v0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CTC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 837
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 838
    invoke-virtual {v6}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    goto :goto_0

    :cond_3
    new-instance v7, Landroid/telephony/ServiceState;

    invoke-direct {v7}, Landroid/telephony/ServiceState;-><init>()V

    :goto_0
    const/4 v8, 0x1

    if-eqz v5, :cond_4

    .line 839
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p2, :cond_4

    .line 841
    const-string p0, "checkEmergencyCallRedirectToNormalCall - no svc redirect to normal for CTC Vowifi"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v8

    .line 845
    :cond_4
    const-string v7, "TPE"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz p2, :cond_6

    const-string p2, "46692"

    .line 846
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "46601"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 847
    :cond_5
    const-string v4, "46600"

    .line 850
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_16

    const-string p2, "460"

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "466"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_6

    .line 855
    :cond_7
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-eqz v2, :cond_8

    const-string v2, "KDI"

    const-string v7, "DCM"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 856
    const-string p0, "checkEmergencyCallRedirectToNormalCall - IN_SVC but KDDI watch"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v3

    :cond_8
    if-eqz v6, :cond_9

    .line 860
    invoke-virtual {v6}, Lcom/android/internal/telephony/SemServiceStateTrackerInternal;->isChinaDomesticRoaming()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v8

    goto :goto_1

    :cond_9
    move v2, v3

    .line 861
    :goto_1
    invoke-static {v1, p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->isEmergencyNumberFromNet(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v6

    if-nez v2, :cond_a

    if-eqz p3, :cond_a

    if-eqz v6, :cond_a

    move v7, v8

    goto :goto_2

    :cond_a
    move v7, v3

    :goto_2
    if-eqz p4, :cond_b

    .line 864
    const-string v9, ", IsChinaDomesticRoaming: "

    invoke-virtual {p4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", IsRealEmergencyNumNet: "

    .line 865
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_b
    if-eqz v7, :cond_c

    .line 868
    const-string p0, "checkEmergencyCallRedirectToNormalCall - It\'s emergency number from net, keep emergency"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v3

    .line 872
    :cond_c
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkEmergencyCallRedirectToNormalCall - address: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 876
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 p4, 0x6e

    if-eqz p2, :cond_13

    const/16 p2, 0x8

    if-eqz v5, :cond_10

    if-eqz v5, :cond_d

    .line 884
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->isVonrSupported()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_d

    goto :goto_4

    :cond_d
    if-nez v0, :cond_e

    .line 912
    const-string v0, "voicecall_type"

    goto :goto_3

    :cond_e
    const-string v0, "voicecall_type2"

    .line 913
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_14

    if-eqz p1, :cond_f

    if-eq p1, p2, :cond_f

    if-eq p1, p4, :cond_14

    const/16 p0, 0x70

    if-eq p1, p0, :cond_14

    const/16 p0, 0x38f

    if-eq p1, p0, :cond_14

    packed-switch p1, :pswitch_data_0

    if-eqz p3, :cond_14

    .line 933
    const-string p0, "checkEmergencyCallRedirectToNormalCall - redirect ecc to normal for CTC Volte (not NET ECC)"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v8

    :cond_f
    :pswitch_0
    if-eqz p3, :cond_14

    .line 927
    const-string p0, "checkEmergencyCallRedirectToNormalCall - redirect ecc to normal for CTC Volte"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v8

    :cond_10
    :goto_4
    if-eqz p1, :cond_12

    if-eq p1, p2, :cond_12

    if-eq p1, p4, :cond_11

    const/16 p0, 0x7a

    if-eq p1, p0, :cond_11

    const/16 p0, 0x3e7

    if-eq p1, p0, :cond_11

    packed-switch p1, :pswitch_data_1

    goto :goto_5

    .line 897
    :cond_11
    :pswitch_1
    const-string p0, "checkEmergencyCallRedirectToNormalCall - redirect ecc to normal because here is china"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v8

    :cond_12
    :pswitch_2
    if-eqz v5, :cond_14

    if-eqz p3, :cond_14

    .line 904
    const-string p0, "checkEmergencyCallRedirectToNormalCall - redirect ecc to normal for CTC VoNR"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v8

    :cond_13
    if-eq p1, p4, :cond_15

    const/16 p0, 0x77

    if-eq p1, p0, :cond_15

    :cond_14
    :goto_5
    :pswitch_3
    return v3

    .line 947
    :cond_15
    const-string p0, "checkEmergencyCallRedirectToNormalCall - redirect ecc to normal because here is taiwan"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v8

    .line 878
    :catch_0
    const-string p0, "checkEmergencyCallRedirectToNormalCall - Wrong address"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v3

    .line 851
    :cond_16
    :goto_6
    const-string p0, "checkEmergencyCallRedirectToNormalCall - Not inservice or not China/Taiwan"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v3

    .line 819
    :cond_17
    :goto_7
    const-string p0, "checkEmergencyCallRedirectToNormalCall - Card State is ABSENT OR LOCKED"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x76
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist createHasCallAttributeMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "video"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v1, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "activevideo"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v1, Landroid/util/Pair;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "csincoming"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "csdialing"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "csalerting"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "volte"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "epdg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getEmergencyServiceCategoryFromDialer(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 354
    const-string v1, "com.samsung.telephony.extra.START_CALL_WITH_EMERGENCY_SERVICE_CATEGORY"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method protected static blacklist getHasCallAttributeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/android/internal/telephony/SemCallTrackerHelper;->sHasCallAttributeMap:Ljava/util/Map;

    return-object v0
.end method

.method public static blacklist imsPhoneStateToString(Lcom/android/internal/telephony/imsphone/ImsPhone;)Ljava/lang/String;
    .locals 4

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 181
    const-string v1, "ImsPhoneState: {Foreground("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 183
    const-string v2, ", Background("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v2, v3, :cond_1

    .line 186
    const-string v2, ", Ringing("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_1
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isCmcSdCall(Landroid/content/ContentResolver;Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 986
    const-string v1, "cmc_device_type"

    .line 987
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "sd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.samsung.telephony.extra.CMC_TYPE"

    .line 988
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist isEmergencyNumberFromNet(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 3

    .line 792
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p0

    .line 796
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 797
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_2
    return v0
.end method

.method private blacklist isFactorySim(Ljava/lang/String;)Z
    .locals 0

    .line 736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->FACTORY_SIM_IMSI:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    .line 782
    const-string v0, "SemCallTrackerHelper"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 786
    const-string v0, "SemCallTrackerHelper"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist makeBigDataString(IILcom/android/internal/telephony/Call$State;)Ljava/lang/String;
    .locals 1

    .line 327
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_0

    .line 328
    const-string p2, "makeCallDataString - Unexpected case. preciseState is DISCONNECTED"

    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 329
    sget-object p2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 333
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    .line 335
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_2

    const/4 p2, 0x2

    goto :goto_0

    .line 337
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_3

    const/4 p2, 0x3

    goto :goto_0

    .line 339
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_4

    const/4 p2, 0x4

    goto :goto_0

    .line 341
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_5

    const/4 p2, 0x5

    goto :goto_0

    .line 343
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_6

    const/4 p2, 0x6

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    .line 347
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist recoveryFile(Ljava/io/File;I)Z
    .locals 7

    .line 665
    const-string p0, "recoveryFile - Try to close resources"

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recoveryFile - File size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    if-gt p2, v1, :cond_9

    .line 675
    const-string p2, "recoveryFile - Attempting to initialize file"

    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 677
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 678
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 681
    :try_start_2
    invoke-virtual {v4, v2, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 682
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 683
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 686
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 687
    :try_start_3
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 689
    :try_start_4
    invoke-virtual {p1, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/4 v0, 0x1

    .line 691
    const-string p2, "recoveryFile - Success in initialization"

    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_8

    :catch_0
    move-exception p2

    goto :goto_6

    .line 693
    :cond_0
    const-string p2, "recoveryFile - Failed again to read file"

    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 698
    :goto_0
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    .line 700
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 706
    :catch_1
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 712
    :catch_2
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 718
    :catch_3
    :goto_1
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto/16 :goto_8

    :catch_4
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v5, p2

    :goto_2
    move-object p2, p1

    move-object p1, v5

    goto :goto_8

    :catch_5
    move-exception p1

    move-object v5, p2

    :goto_3
    move-object p2, p1

    move-object p1, v5

    goto :goto_6

    :catchall_3
    move-exception p1

    move-object v4, p2

    :goto_4
    move-object v5, v4

    goto :goto_2

    :catch_6
    move-exception p1

    move-object v4, p2

    :goto_5
    move-object v5, v4

    goto :goto_3

    :catchall_4
    move-exception p1

    move-object v3, p2

    move-object v4, v3

    goto :goto_4

    :catch_7
    move-exception p1

    move-object v3, p2

    move-object v4, v3

    goto :goto_5

    .line 696
    :goto_6
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoveryFile is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 698
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 700
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    :cond_1
    if-eqz v3, :cond_2

    .line 706
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :catch_9
    :cond_2
    if-eqz p1, :cond_3

    .line 712
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_3
    if-eqz v5, :cond_4

    goto :goto_1

    :catch_b
    :cond_4
    :goto_7
    return v0

    .line 698
    :goto_8
    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    .line 700
    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    :catch_c
    :cond_5
    if-eqz v3, :cond_6

    .line 706
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    :catch_d
    :cond_6
    if-eqz p1, :cond_7

    .line 712
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    :catch_e
    :cond_7
    if-eqz v5, :cond_8

    .line 718
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 723
    :catch_f
    :cond_8
    throw p2

    :cond_9
    return v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static blacklist setUseMdecEnabled(Z)V
    .locals 0

    .line 996
    sput-boolean p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mIsCmcSdEnabled:Z

    return-void
.end method

.method public static blacklist skipHandleInCallMmiCommands(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 363
    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSilentRedial(Landroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 364
    const-string p0, "Skip handleInCallMmiCommands (Cause: Silent redial)"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v0

    .line 368
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getNetworkOperatorForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    .line 369
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "604"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "15"

    .line 370
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "19"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 371
    :cond_1
    const-string p0, "Skip handleInCallMmiCommands (Cause: Morocco local emergency number)"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist updateIntentExtras(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .locals 2

    if-nez p0, :cond_0

    .line 160
    const-string p0, "updateIntentExtras - Unexpected case. dialArgs is null"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 161
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 162
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->build()Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;

    move-result-object p0

    return-object p0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIntentExtras - old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyLogUtils;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p0

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p0

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateIntentExtras - new: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyLogUtils;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist updateTotalCallTime(J)V
    .locals 21

    .line 546
    const-string v1, "updateTotalCallTime is fail. "

    const/4 v2, 0x4

    .line 554
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 558
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v0, "/efs/imei/total_call_time"

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_5

    .line 560
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    const-string v0, "Failed to create file"

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v10, v4

    move-object v11, v10

    goto/16 :goto_18

    :catch_0
    move-exception v0

    move-object v10, v4

    move-object v11, v10

    goto/16 :goto_14

    .line 565
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v9, "chmod 664 /efs/imei/total_call_time"

    invoke-virtual {v0, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_1

    .line 567
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v10, v4

    move-object v11, v10

    :goto_0
    move-object v4, v9

    goto/16 :goto_18

    :catch_1
    move-exception v0

    move-object v10, v4

    move-object v11, v10

    :goto_1
    move-object v4, v9

    goto/16 :goto_14

    .line 571
    :cond_1
    :goto_2
    new-instance v0, Ljava/io/File;

    const-string v10, "/efs/total_call_time"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 573
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 574
    :try_start_2
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 575
    :try_start_3
    invoke-virtual {v11, v3, v8, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v6, :cond_2

    :goto_3
    move v0, v7

    goto/16 :goto_6

    .line 578
    :cond_2
    const-string v0, "updateTotalCallTime - Failed to read file"

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v9, :cond_3

    .line 610
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    .line 612
    :cond_3
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 613
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    goto/16 :goto_17

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v11, v4

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v11, v4

    goto :goto_1

    :cond_4
    move-object v10, v4

    move-object v11, v10

    move v0, v8

    goto :goto_6

    .line 583
    :cond_5
    :try_start_5
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 584
    :try_start_6
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 587
    :try_start_7
    invoke-virtual {v11, v3, v8, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v6, :cond_6

    :goto_5
    move-object v9, v4

    goto :goto_3

    .line 589
    :cond_6
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v0

    move-object/from16 v6, p0

    invoke-direct {v6, v5, v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->recoveryFile(Ljava/io/File;I)Z

    move-result v0

    if-ne v0, v7, :cond_11

    .line 590
    const-string v0, "updateTotalCallTime - Recovered file"

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_5

    :goto_6
    const/4 v14, 0x2

    const/16 v15, 0x8

    const-wide/16 v16, 0x0

    if-eqz v0, :cond_7

    .line 600
    :try_start_8
    aget-byte v0, v3, v8

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v7

    const/16 p0, 0x18

    int-to-long v6, v0

    .line 601
    aget-byte v0, v3, v18

    shl-int/2addr v0, v15

    const v19, 0xff00

    and-int v0, v0, v19

    const/16 v19, 0x3

    const/16 v20, 0x10

    int-to-long v12, v0

    add-long/2addr v6, v12

    .line 602
    aget-byte v0, v3, v14

    shl-int/lit8 v0, v0, 0x10

    const/high16 v12, 0xff0000

    and-int/2addr v0, v12

    int-to-long v12, v0

    add-long/2addr v6, v12

    .line 603
    aget-byte v0, v3, v19

    shl-int/lit8 v0, v0, 0x18

    const/high16 v12, -0x1000000

    and-int/2addr v0, v12

    int-to-long v12, v0

    add-long/2addr v6, v12

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateTotalCallTime - Current total call time: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_7

    :cond_7
    move/from16 v18, v7

    const/16 p0, 0x18

    const/16 v19, 0x3

    const/16 v20, 0x10

    move-wide/from16 v6, v16

    :goto_7
    if-eqz v9, :cond_8

    .line 610
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V

    :cond_8
    if-eqz v11, :cond_9

    .line 612
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :cond_9
    :goto_8
    if-eqz v10, :cond_a

    .line 613
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_a

    .line 615
    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    :cond_a
    :goto_a
    const-wide/16 v9, 0x1c20

    cmp-long v0, v6, v9

    if-ltz v0, :cond_b

    goto/16 :goto_17

    :cond_b
    cmp-long v0, p1, v16

    if-eqz v0, :cond_c

    const-wide/16 v11, 0x3e8

    .line 627
    div-long v11, p1, v11

    add-long/2addr v6, v11

    :cond_c
    cmp-long v0, v6, v9

    if-ltz v0, :cond_d

    goto :goto_b

    :cond_d
    move-wide v9, v6

    .line 635
    :goto_b
    :try_start_a
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 636
    :try_start_b
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    const-wide/16 p1, 0xff

    and-long v11, v9, p1

    long-to-int v0, v11

    int-to-byte v0, v0

    .line 638
    :try_start_c
    aput-byte v0, v3, v8

    shr-long v11, v9, v15

    and-long v11, v11, p1

    long-to-int v0, v11

    int-to-byte v0, v0

    .line 639
    aput-byte v0, v3, v18

    shr-long v11, v9, v20

    and-long v11, v11, p1

    long-to-int v0, v11

    int-to-byte v0, v0

    .line 640
    aput-byte v0, v3, v14

    shr-long v11, v9, p0

    and-long v11, v11, p1

    long-to-int v0, v11

    int-to-byte v0, v0

    .line 641
    aput-byte v0, v3, v19

    .line 643
    invoke-virtual {v5, v3, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 644
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 645
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTotalCallTime - File closed new totalCallTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 651
    :try_start_d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 652
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_17

    :catch_6
    move-exception v0

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    goto/16 :goto_17

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v4, v5

    goto :goto_10

    :catch_7
    move-exception v0

    move-object v4, v5

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v2, v0

    goto :goto_10

    :catch_8
    move-exception v0

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v6, v4

    goto :goto_10

    :catch_9
    move-exception v0

    move-object v6, v4

    .line 648
    :goto_d
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v4, :cond_e

    .line 651
    :try_start_f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_e

    :catch_a
    move-exception v0

    goto :goto_f

    :cond_e
    :goto_e
    if-eqz v6, :cond_14

    .line 652
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_17

    .line 654
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c

    :goto_10
    if-eqz v4, :cond_f

    .line 651
    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_11

    :catch_b
    move-exception v0

    goto :goto_12

    :cond_f
    :goto_11
    if-eqz v6, :cond_10

    .line 652
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_13

    .line 654
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    .line 659
    :cond_10
    :goto_13
    throw v2

    :catchall_7
    move-exception v0

    move-object v2, v0

    goto :goto_18

    :catch_c
    move-exception v0

    goto :goto_14

    .line 593
    :cond_11
    :try_start_11
    const-string v0, "updateTotalCallTime - Recovery file failed"

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 595
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 612
    :try_start_12
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 613
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :catchall_8
    move-exception v0

    move-object v2, v0

    move-object v11, v4

    goto :goto_18

    :catch_e
    move-exception v0

    move-object v11, v4

    .line 607
    :goto_14
    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v4, :cond_12

    .line 610
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_12
    if-eqz v11, :cond_13

    .line 612
    :try_start_14
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_15

    :catch_f
    move-exception v0

    goto :goto_16

    :cond_13
    :goto_15
    if-eqz v10, :cond_14

    .line 613
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    goto :goto_17

    .line 615
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :cond_14
    :goto_17
    return-void

    :goto_18
    if-eqz v4, :cond_15

    .line 610
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_15
    if-eqz v11, :cond_16

    .line 612
    :try_start_15
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    goto :goto_19

    :catch_10
    move-exception v0

    goto :goto_1a

    :cond_16
    :goto_19
    if-eqz v10, :cond_17

    .line 613
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    goto :goto_1b

    .line 615
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    .line 620
    :cond_17
    :goto_1b
    throw v2
.end method

.method public static blacklist useMdecEnabled()Z
    .locals 1

    .line 1000
    sget-boolean v0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mIsCmcSdEnabled:Z

    return v0
.end method


# virtual methods
.method public blacklist convertNumberForAssistedDialing(Ljava/lang/String;Landroid/os/Bundle;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 761
    new-instance p0, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 767
    :cond_0
    const-string v0, "com.samsung.telephony.extra.EXTRA_ASSISTED_DIAL_FROM"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 769
    iget-object p2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->assistedDialFromContactList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->getIsAssistedDialingNumber()Z

    move-result v1

    .line 771
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Use AssistedDialing feature (ContactList), isUseAssistedDialing: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 773
    iget-object p2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->assistedDialFromDialPad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 774
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mAssistedDialingHelper:Lcom/android/internal/telephony/SemAssistedDialingHelper;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemAssistedDialingHelper;->getIsAssistedDialingNumber()Z

    move-result v1

    .line 775
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Use AssistedDialing feature (Idle), isUseAssistedDialing: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 778
    :cond_2
    :goto_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method protected blacklist hasCall(Ljava/lang/String;)Z
    .locals 10

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/internal/telephony/SemCallTrackerHelper;->sHasCallAttributeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 245
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 246
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 247
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    sget-boolean v4, Landroid/os/Build;->IS_ENG:Z

    if-eqz v4, :cond_1

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasCall - callType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", domain: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", category: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 254
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    if-eqz p0, :cond_8

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v6, :cond_8

    .line 258
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_2

    .line 260
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_3

    .line 263
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_4

    .line 266
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_8

    .line 271
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v6, v1

    :cond_5
    if-ge v6, p0, :cond_8

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/internal/telephony/Connection;

    .line 272
    const-string v8, "csincoming"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_6

    return v5

    .line 274
    :cond_6
    const-string v8, "csdialing"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_7

    return v5

    .line 276
    :cond_7
    const-string v8, "csalerting"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    return v5

    :cond_8
    and-int/lit8 p0, v3, 0x2

    if-eqz p0, :cond_10

    if-eqz v2, :cond_10

    .line 284
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 285
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, v3, :cond_10

    .line 286
    const-string p0, "volte"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v5

    .line 291
    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_a

    .line 293
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_b

    .line 296
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_b
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 299
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 303
    :cond_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 304
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :cond_d
    if-ge v2, v0, :cond_10

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 305
    const-string v4, "video"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_e

    return v5

    .line 307
    :cond_e
    const-string v4, "activevideo"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_f

    return v5

    .line 309
    :cond_f
    const-string v4, "epdg"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isWifi()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_d

    return v5

    :cond_10
    :goto_0
    return v1
.end method

.method protected blacklist preprocessDialArgs(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .locals 7

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallRoute - preprocessDialArgs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogUtils;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 119
    iget-object v2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 120
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/SemCallTrackerHelper;->FILTER_EXTRAS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 121
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 124
    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->from(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    move-result-object p2

    .line 125
    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object p2

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v3, ", dialString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    const-string v3, ", dialLength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string p1, ", "

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->imsPhoneStateToString(Lcom/android/internal/telephony/imsphone/ImsPhone;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_2
    const-string v0, ", NetworkMode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v0, ", SIM: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v0, ", Network: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, ", Voice: ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v4, ", Data: ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilServiceStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p3

    invoke-static {p3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogUtils;->dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 152
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->writeLastDialInfoLog(Ljava/lang/String;)V

    :cond_3
    return-object p2
.end method

.method public blacklist setCallTime(Lcom/android/internal/telephony/Connection;)V
    .locals 14

    if-nez p1, :cond_0

    .line 454
    const-string p0, "setCallTime - conn is null"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void

    .line 458
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v1

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->isFactorySim(Ljava/lang/String;)Z

    move-result v3

    .line 462
    iget-object v4, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 463
    instance-of v7, p1, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v7, :cond_2

    .line 464
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 465
    move-object v4, p1

    check-cast v4, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaConnection;->isOtaspCall()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 468
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "LTN"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_3

    .line 469
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCallTime - Update total call time: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 471
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemCallTrackerHelper;->updateTotalCallTime(J)V

    .line 475
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    const-string p0, "setCallTime - Don\'t set call time values (No IMSI)"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz v3, :cond_5

    .line 478
    const-string p0, "setCallTime - Don\'t set call time values (Factory SIM)"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void

    :cond_5
    if-eqz v4, :cond_6

    .line 480
    const-string p0, "setCallTime - Don\'t set call time values (OTASP)"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void

    .line 483
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 484
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v4

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzSignal;->getAgeAdjustedElapsedRealtimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 486
    new-instance v0, Landroid/text/format/Time;

    iget-object v9, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastTimeZoneId:Ljava/lang/String;

    if-eqz v9, :cond_7

    goto :goto_1

    :cond_7
    const-string v9, "GMT"

    :goto_1
    invoke-direct {v0, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    add-long/2addr v4, v7

    .line 487
    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    goto :goto_2

    .line 488
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v4, "CHN"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 490
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    const/4 v12, 0x1

    const/16 v13, 0x7bc

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 491
    invoke-virtual/range {v7 .. v13}, Landroid/text/format/Time;->set(IIIIII)V

    move-object v0, v7

    goto :goto_2

    :cond_9
    move-object v0, v3

    :goto_2
    const/16 v4, 0xb

    .line 493
    const-string v5, "setCallTime is fail. "

    if-eqz v0, :cond_a

    .line 494
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCallTime - networkTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 495
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 496
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v9, 0xc

    .line 498
    :try_start_0
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v9, 0x41

    .line 499
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 500
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 501
    iget v9, v0, Landroid/text/format/Time;->year:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 502
    iget v9, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 503
    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v8, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 504
    iget v6, v0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v8, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 505
    iget v6, v0, Landroid/text/format/Time;->minute:I

    invoke-virtual {v8, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 506
    iget v0, v0, Landroid/text/format/Time;->second:I

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 513
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 515
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 509
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    :try_start_3
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 513
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 515
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 512
    :goto_4
    :try_start_4
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 513
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object p1, v0

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    .line 517
    :goto_5
    throw p0

    .line 520
    :cond_a
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCallTime - duration: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v8, v1, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 522
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 523
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 525
    :try_start_5
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0xd

    .line 526
    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 527
    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 528
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p1

    invoke-virtual {v9, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 529
    div-long/2addr v1, v6

    invoke-virtual {v9, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 530
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 535
    :try_start_6
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 536
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    move-object p0, v0

    .line 538
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :catch_5
    move-exception v0

    move-object p0, v0

    .line 532
    :try_start_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 535
    :try_start_8
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 536
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object p0, v0

    .line 538
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :goto_8
    return-void

    .line 535
    :goto_9
    :try_start_9
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 536
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object p1, v0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->loge(Ljava/lang/String;)V

    .line 540
    :goto_a
    throw p0
.end method

.method public blacklist setImsCallList()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mImsCallListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

    iput-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mOldImsCallList:Lcom/android/internal/telephony/ImsCallList;

    .line 199
    new-instance v2, Lcom/android/internal/telephony/ImsCallList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHandoverConnection()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/ImsCallList;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mOldImsCallList:Lcom/android/internal/telephony/ImsCallList;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ImsCallList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] setImsCallList - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mNewImsCallList:Lcom/android/internal/telephony/ImsCallList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsCallList;->toSehImsCallList()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/internal/telephony/SemCommandsInterface;->setImsCallList(Ljava/util/ArrayList;Landroid/os/Message;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 205
    :cond_0
    const-string p0, "setImsCallList - imsPhone is null"

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 207
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist setLastNitzSignal(Lcom/android/internal/telephony/NitzSignal;)V
    .locals 1

    .line 441
    iput-object p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLastNitzSignal: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastNitzSignal:Lcom/android/internal/telephony/NitzSignal;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setTimezoneId(Ljava/lang/String;)V
    .locals 1

    .line 447
    iput-object p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastTimeZoneId:Ljava/lang/String;

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTimezoneId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mLastTimeZoneId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist useFormatDialStringForImsCall()Z
    .locals 4

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 748
    iget-object v2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getMNOCarrierId()I

    move-result v2

    const/16 v3, 0x72f

    if-ne v2, v3, :cond_1

    .line 749
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 750
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method
