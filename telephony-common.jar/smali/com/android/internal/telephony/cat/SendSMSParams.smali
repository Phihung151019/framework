.class Lcom/android/internal/telephony/cat/SendSMSParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "SendSMSParams.java"


# instance fields
.field blacklist mDestAddress:Lcom/android/internal/telephony/cat/TextMessage;

.field blacklist mDisplayText:Lcom/android/internal/telephony/cat/DisplayTextParams;

.field blacklist mFormat:Ljava/lang/String;

.field blacklist mTextSmsMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/DisplayTextParams;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 31
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->mTextSmsMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 32
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->mDestAddress:Lcom/android/internal/telephony/cat/TextMessage;

    .line 33
    iput-object p4, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->mDisplayText:Lcom/android/internal/telephony/cat/DisplayTextParams;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/DisplayTextParams;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cat/SendSMSParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/DisplayTextParams;)V

    .line 40
    iput-object p5, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->mFormat:Ljava/lang/String;

    return-void
.end method
