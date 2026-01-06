.class Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/PhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetworkCallback"
.end annotation


# instance fields
.field public blacklist mExpectedSubId:I

.field public blacklist mSwitchReason:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 387
    iput-object p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, -0x1

    .line 388
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    const/4 p1, 0x0

    .line 389
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mSwitchReason:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/PhoneSwitcher;Lcom/android/internal/telephony/data/PhoneSwitcher-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;-><init>(Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    return-void
.end method


# virtual methods
.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    const/4 p1, 0x0

    .line 393
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    iget-object v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 396
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    .line 395
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getSubIdFromNetworkSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget v1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mSwitchReason:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->-$$Nest$mlogDataSwitchEvent(Lcom/android/internal/telephony/data/PhoneSwitcher;III)V

    const/4 v0, -0x1

    .line 401
    iput v0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mExpectedSubId:I

    .line 402
    iput p1, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->mSwitchReason:I

    .line 405
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->updateDefaultNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher$DefaultNetworkCallback;->this$0:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget-object p0, p0, Lcom/android/internal/telephony/data/PhoneSwitcher;->mAutoDataSwitchController:Lcom/android/internal/telephony/data/AutoDataSwitchController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->updateDefaultNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    return-void
.end method
