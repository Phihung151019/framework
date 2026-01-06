.class public Lcom/android/internal/telephony/IccCard;
.super Lcom/android/internal/telephony/SemIccCardBase;
.source "IccCard.java"


# instance fields
.field private blacklist mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/internal/telephony/SemIccCardBase;-><init>()V

    .line 48
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/SemIccCardBase;-><init>()V

    .line 48
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method

.method private blacklist sendMessageWithCardAbsentException(Landroid/os/Message;)V
    .locals 2

    .line 306
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object p0

    .line 307
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No valid IccCard"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 308
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public blacklist changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 245
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 229
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getIccFdnAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccFdnEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccLockEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccPin2Blocked()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccPuk2Blocked()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getServiceProviderName()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p0
.end method

.method public blacklist hasIccCard()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEmptyProfile()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 213
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 197
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 142
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public greylist supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 112
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 127
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public greylist supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 120
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 134
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 150
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccCard;->sendMessageWithCardAbsentException(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method
