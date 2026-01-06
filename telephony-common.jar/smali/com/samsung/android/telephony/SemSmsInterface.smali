.class public Lcom/samsung/android/telephony/SemSmsInterface;
.super Ljava/lang/Object;
.source "SemSmsInterface.java"


# static fields
.field public static final SMS_GET_CALLBACK_NUMBER:Ljava/lang/String; = "getCallbackNumber"

.field public static final SMS_GET_DEST_PORT:Ljava/lang/String; = "getDestPortAddr"

.field public static final SMS_GET_LINK_URL:Ljava/lang/String; = "getlinkUrl"

.field public static final SMS_GET_LINK_WARNING_INDICATION:Ljava/lang/String; = "getLinkWarningIndication"

.field public static final SMS_GET_MESSAGE_PRIORITY:Ljava/lang/String; = "getMessagePriority"

.field public static final SMS_GET_READ_CONFIRM_ID:Ljava/lang/String; = "getReadConfirmId"

.field public static final SMS_GET_SAFE_MESSAGE_INDICATION:Ljava/lang/String; = "getSafeMessageIndication"

.field public static final SMS_GET_SHARED_APP_ID:Ljava/lang/String; = "getSharedAppId"

.field public static final SMS_GET_SHARED_CMD:Ljava/lang/String; = "getSharedCmd"

.field public static final SMS_GET_SHARED_PAYLOAD:Ljava/lang/String; = "getSharedPayLoad"

.field public static final SMS_GET_TELESERVICE_ID:Ljava/lang/String; = "getTeleserviceId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZIII)[I
    .locals 2

    .line 128
    const-string v0, "SecSmsManager"

    const-string v1, "SemSmsInterface.getTextEncoding"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p3, :cond_0

    if-lez p4, :cond_0

    .line 130
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZIII)[I

    move-result-object p0

    return-object p0

    .line 132
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLengthWithEncodingType(Ljava/lang/CharSequence;ZI)[I

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 2

    .line 187
    const-string v0, "SecSmsManager"

    const-string v1, "SemSmsInterface.getDefaultRespondViaMessageApplication"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static getSmsMessageValue(Landroid/telephony/SmsMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemSmsInterface.getSmsMessageValue : API = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSmsManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "getSharedPayLoad"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "getCallbackNumber"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "getDestPortAddr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "getLinkWarningIndication"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "getReadConfirmId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "getTeleserviceId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "getSharedAppId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "getlinkUrl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "getMessagePriority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "getSharedCmd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_a
    const-string v2, "getSafeMessageIndication"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 170
    const-string p0, "NOT Supported API. Need to add API"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string p0, "NOT Supported API"

    return-object p0

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedPayLoad()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 148
    :pswitch_1
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
    :pswitch_2
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getDestPortAddr()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 164
    :pswitch_3
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getLinkWarningIndication()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 168
    :pswitch_4
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getReadConfirmId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 158
    :pswitch_5
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getTeleserviceId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :pswitch_6
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :pswitch_7
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getlinkUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 160
    :pswitch_8
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 156
    :pswitch_9
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSharedCmd()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :pswitch_a
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSafeMessageIndication()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x68709500 -> :sswitch_a
        -0x5ed7c821 -> :sswitch_9
        -0x3171476b -> :sswitch_8
        -0x1add7901 -> :sswitch_7
        -0x820df7f -> :sswitch_6
        -0x491170 -> :sswitch_5
        0x1bab2b4f -> :sswitch_4
        0x3615bb88 -> :sswitch_3
        0x3bcdb34a -> :sswitch_2
        0x3c87ace4 -> :sswitch_1
        0x7cfe31d3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
