.class public final Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;
.super Ljava/lang/Object;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "EmergencyOverrideRequest"
.end annotation


# instance fields
.field blacklist mGnssOverrideTimeMs:I

.field blacklist mOverrideCompleteFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPendingOriginatingCall:Z

.field blacklist mPhoneId:I

.field blacklist mRequiresEcmFinish:Z


# direct methods
.method protected constructor blacklist <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 148
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    .line 150
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mGnssOverrideTimeMs:I

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mRequiresEcmFinish:Z

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPendingOriginatingCall:Z

    return-void
.end method


# virtual methods
.method blacklist isCallbackAvailable()Z
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mOverrideCompleteFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist sendOverrideCompleteCallbackResultAndClear(Z)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->isCallbackAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mOverrideCompleteFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mOverrideCompleteFuture:Ljava/util/concurrent/CompletableFuture;

    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 187
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mPhoneId:I

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mGnssOverrideTimeMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->isCallbackAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;->mRequiresEcmFinish:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 187
    const-string v0, "EmergencyOverrideRequest: [phoneId= %d, overrideMs= %d, hasCallback= %b, ecmFinishStatus= %b]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
