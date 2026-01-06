.class Lcom/android/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mChannelId:I

.field blacklist mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

.field blacklist mPdnReuse:Z

.field blacklist mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/CloseChannelMode;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 336
    iput p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    .line 337
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

    .line 338
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 339
    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mPdnReuse:Z

    return-void
.end method
