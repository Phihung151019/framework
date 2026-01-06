.class public Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;
.super Ljava/lang/Object;
.source "TelephonyAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/TelephonyAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsMmsAnalytics"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SmsMmsAnalytics"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;


# direct methods
.method public static synthetic blacklist $r8$lambda$3P5S3wjvpzidkFxzGYF-4dwZLtY(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->lambda$sendDataToProvider$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 884
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getIncomingError(I)I
    .locals 3

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getIncomingSmsErrorString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 1026
    const-string p0, "INCOMING_SMS__ERROR__SMS_ERROR_GENERIC"

    return-object p0

    .line 1023
    :cond_0
    const-string p0, "INCOMING_SMS__ERROR__SMS_ERROR_NOT_SUPPORTED"

    return-object p0

    .line 1021
    :cond_1
    const-string p0, "INCOMING_SMS__ERROR__SMS_ERROR_NO_MEMORY"

    return-object p0

    .line 1019
    :cond_2
    const-string p0, "INCOMING_SMS__ERROR__SMS_SUCCESS"

    return-object p0
.end method

.method private blacklist getRat(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v1, v0

    .line 1045
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getRat(Z)I

    move-result p0

    return p0
.end method

.method private blacklist getRat(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1051
    iget-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget-object p1, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x12

    return p0

    .line 1056
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1058
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getServiceState()Landroid/telephony/ServiceState;
    .locals 3

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1033
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1034
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1036
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1037
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSmsFailureReasonString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 1207
    const-string p0, "NA"

    return-object p0

    .line 1205
    :pswitch_0
    const-string p0, "RESULT_RIL_ABORTED"

    return-object p0

    .line 1203
    :pswitch_1
    const-string p0, "RESULT_RIL_DEVICE_IN_USE"

    return-object p0

    .line 1201
    :pswitch_2
    const-string p0, "RESULT_RIL_NO_NETWORK_FOUND"

    return-object p0

    .line 1199
    :pswitch_3
    const-string p0, "RESULT_RIL_NO_SUBSCRIPTION"

    return-object p0

    .line 1197
    :pswitch_4
    const-string p0, "RESULT_RIL_SIM_FULL"

    return-object p0

    .line 1195
    :pswitch_5
    const-string p0, "RESULT_RIL_SIM_BUSY"

    return-object p0

    .line 1193
    :pswitch_6
    const-string p0, "RESULT_RIL_NO_SMS_TO_ACK"

    return-object p0

    .line 1191
    :pswitch_7
    const-string p0, "RESULT_RIL_INVALID_SIM_STATE"

    return-object p0

    .line 1189
    :pswitch_8
    const-string p0, "RESULT_RIL_SIM_ERROR"

    return-object p0

    .line 1187
    :pswitch_9
    const-string p0, "RESULT_RIL_SUBSCRIPTION_NOT_AVAILABLE"

    return-object p0

    .line 1185
    :pswitch_a
    const-string p0, "RESULT_RIL_SIM_PUK2"

    return-object p0

    .line 1183
    :pswitch_b
    const-string p0, "RESULT_RIL_SIM_PIN2"

    return-object p0

    .line 1181
    :pswitch_c
    const-string p0, "RESULT_RIL_INVALID_RESPONSE"

    return-object p0

    .line 1179
    :pswitch_d
    const-string p0, "RESULT_RIL_GENERIC_ERROR"

    return-object p0

    .line 1177
    :pswitch_e
    const-string p0, "RESULT_RIL_BLOCKED_DUE_TO_CALL"

    return-object p0

    .line 1175
    :pswitch_f
    const-string p0, "RESULT_RIL_ACCESS_BARRED"

    return-object p0

    .line 1173
    :pswitch_10
    const-string p0, "RESULT_RIL_SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED"

    return-object p0

    .line 1171
    :pswitch_11
    const-string p0, "RESULT_RIL_SIM_ABSENT"

    return-object p0

    .line 1169
    :pswitch_12
    const-string p0, "RESULT_RIL_CANCELLED"

    return-object p0

    .line 1167
    :pswitch_13
    const-string p0, "RESULT_RIL_NO_RESOURCES"

    return-object p0

    .line 1165
    :pswitch_14
    const-string p0, "RESULT_RIL_OPERATION_NOT_ALLOWED"

    return-object p0

    .line 1163
    :pswitch_15
    const-string p0, "RESULT_RIL_NETWORK_NOT_READY"

    return-object p0

    .line 1161
    :pswitch_16
    const-string p0, "RESULT_RIL_INVALID_MODEM_STATE"

    return-object p0

    .line 1159
    :pswitch_17
    const-string p0, "RESULT_RIL_REQUEST_NOT_SUPPORTED"

    return-object p0

    .line 1157
    :pswitch_18
    const-string p0, "RESULT_RIL_INTERNAL_ERR"

    return-object p0

    .line 1155
    :pswitch_19
    const-string p0, "RESULT_RIL_NETWORK_ERR"

    return-object p0

    .line 1153
    :pswitch_1a
    const-string p0, "RESULT_RIL_MODEM_ERR"

    return-object p0

    .line 1151
    :pswitch_1b
    const-string p0, "RESULT_RIL_INVALID_SMSC_ADDRESS"

    return-object p0

    .line 1149
    :pswitch_1c
    const-string p0, "RESULT_RIL_ENCODING_ERR"

    return-object p0

    .line 1147
    :pswitch_1d
    const-string p0, "RESULT_RIL_SYSTEM_ERR"

    return-object p0

    .line 1145
    :pswitch_1e
    const-string p0, "RESULT_RIL_INVALID_SMS_FORMAT"

    return-object p0

    .line 1143
    :pswitch_1f
    const-string p0, "RESULT_RIL_REQUEST_RATE_LIMITED"

    return-object p0

    .line 1141
    :pswitch_20
    const-string p0, "RESULT_RIL_NO_MEMORY"

    return-object p0

    .line 1139
    :pswitch_21
    const-string p0, "RESULT_RIL_INVALID_ARGUMENTS"

    return-object p0

    .line 1137
    :pswitch_22
    const-string p0, "RESULT_RIL_INVALID_STATE"

    return-object p0

    .line 1135
    :pswitch_23
    const-string p0, "RESULT_RIL_NETWORK_REJECT"

    return-object p0

    .line 1133
    :pswitch_24
    const-string p0, "RESULT_RIL_SMS_SEND_FAIL_RETRY"

    return-object p0

    .line 1131
    :pswitch_25
    const-string p0, "RESULT_RIL_RADIO_NOT_AVAILABLE"

    return-object p0

    .line 1129
    :pswitch_26
    const-string p0, "RESULT_USER_NOT_ALLOWED"

    return-object p0

    .line 1127
    :pswitch_27
    const-string p0, "RESULT_NO_DEFAULT_SMS_APP"

    return-object p0

    .line 1125
    :pswitch_28
    const-string p0, "RESULT_REMOTE_EXCEPTION"

    return-object p0

    .line 1123
    :pswitch_29
    const-string p0, "RESULT_SMS_SEND_RETRY_FAILED"

    return-object p0

    .line 1121
    :pswitch_2a
    const-string p0, "RESULT_SMS_BLOCKED_DURING_EMERGENCY"

    return-object p0

    .line 1119
    :pswitch_2b
    const-string p0, "RESULT_UNEXPECTED_EVENT_STOP_SENDING"

    return-object p0

    .line 1117
    :pswitch_2c
    const-string p0, "RESULT_BLUETOOTH_DISCONNECTED"

    return-object p0

    .line 1115
    :pswitch_2d
    const-string p0, "RESULT_INVALID_BLUETOOTH_ADDRESS"

    return-object p0

    .line 1113
    :pswitch_2e
    const-string p0, "RESULT_NO_BLUETOOTH_SERVICE"

    return-object p0

    .line 1111
    :pswitch_2f
    const-string p0, "RESULT_REQUEST_NOT_SUPPORTED"

    return-object p0

    .line 1109
    :pswitch_30
    const-string p0, "RESULT_CANCELLED"

    return-object p0

    .line 1107
    :pswitch_31
    const-string p0, "RESULT_NO_RESOURCES"

    return-object p0

    .line 1105
    :pswitch_32
    const-string p0, "RESULT_INTERNAL_ERROR"

    return-object p0

    .line 1103
    :pswitch_33
    const-string p0, "RESULT_OPERATION_NOT_ALLOWED"

    return-object p0

    .line 1101
    :pswitch_34
    const-string p0, "RESULT_INVALID_SMSC_ADDRESS"

    return-object p0

    .line 1099
    :pswitch_35
    const-string p0, "RESULT_NETWORK_ERROR"

    return-object p0

    .line 1097
    :pswitch_36
    const-string p0, "RESULT_MODEM_ERROR"

    return-object p0

    .line 1095
    :pswitch_37
    const-string p0, "RESULT_SYSTEM_ERROR"

    return-object p0

    .line 1093
    :pswitch_38
    const-string p0, "RESULT_INVALID_SMS_FORMAT"

    return-object p0

    .line 1091
    :pswitch_39
    const-string p0, "RESULT_NO_MEMORY"

    return-object p0

    .line 1089
    :pswitch_3a
    const-string p0, "RESULT_INVALID_STATE"

    return-object p0

    .line 1087
    :pswitch_3b
    const-string p0, "RESULT_INVALID_ARGUMENTS"

    return-object p0

    .line 1085
    :pswitch_3c
    const-string p0, "RESULT_NETWORK_REJECT"

    return-object p0

    .line 1083
    :pswitch_3d
    const-string p0, "RESULT_RADIO_NOT_AVAILABLE"

    return-object p0

    .line 1081
    :pswitch_3e
    const-string p0, "RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED"

    return-object p0

    .line 1079
    :pswitch_3f
    const-string p0, "RESULT_ERROR_SHORT_CODE_NOT_ALLOWED"

    return-object p0

    .line 1077
    :pswitch_40
    const-string p0, "RESULT_ERROR_FDN_CHECK_FAILURE"

    return-object p0

    .line 1075
    :pswitch_41
    const-string p0, "RESULT_ERROR_LIMIT_EXCEEDED"

    return-object p0

    .line 1073
    :pswitch_42
    const-string p0, "RESULT_ERROR_NO_SERVICE"

    return-object p0

    .line 1071
    :pswitch_43
    const-string p0, "RESULT_ERROR_NULL_PDU"

    return-object p0

    .line 1069
    :pswitch_44
    const-string p0, "RESULT_ERROR_RADIO_OFF"

    return-object p0

    .line 1067
    :pswitch_45
    const-string p0, "RESULT_ERROR_GENERIC_FAILURE"

    return-object p0

    .line 1065
    :pswitch_46
    const-string p0, "RESULT_ERROR_NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic blacklist lambda$sendDataToProvider$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 996
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSmsMmsAnalyticsProvider:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->insertDataToDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logIncomingSms(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 969
    const-string v0, "SMS Incoming"

    .line 971
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getRat(I)I

    move-result p1

    .line 972
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-direct {p0, p2, v0, v1, p3}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->sendDataToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    sget-object v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SlotInfo ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Type = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Status = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " RAT "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ) Failure Reason = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 989
    sget-object p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logOutgoingSms(ZI)V
    .locals 6

    .line 940
    :try_start_0
    const-string v0, "SMS Outgoing"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    const-string v1, "Success"

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v2, "Failure"

    .line 942
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getRat(Z)I

    move-result p1

    .line 943
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 945
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "NA"

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getSmsFailureReasonString(I)Ljava/lang/String;

    move-result-object p2

    .line 946
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SlotInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "RAT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Failure Reason = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-direct {p0, v2, v0, v3, p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->sendDataToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 963
    sget-object p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in SmsLogs"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist sendDataToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmExecutorService(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onDroppedIncomingMultipartSms()V
    .locals 4

    const/4 v0, 0x0

    .line 915
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    .line 916
    const-string v1, "INCOMING_SMS__ERROR__SMS_ERROR_GENERIC"

    .line 917
    const-string v2, "Failure"

    const-string v3, "SMS Incoming"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->sendDataToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onIncomingSmsError(II)V
    .locals 3

    .line 923
    invoke-static {p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getIncomingSmsErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 924
    const-string v1, "Failure"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->logIncomingSms(ILjava/lang/String;Ljava/lang/String;)V

    .line 925
    sget-object p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " smsSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Result = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "IncomingError = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-static {p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getIncomingError(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 925
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onIncomingSmsSuccess(I)V
    .locals 3

    .line 903
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " smsSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v0, "Success"

    .line 905
    const-string v1, "NA"

    .line 906
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->logIncomingSms(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onOutgoingSms(ZI)V
    .locals 3

    .line 890
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is Over Ims = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sendErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "SlotInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->logOutgoingSms(ZI)V

    return-void
.end method
