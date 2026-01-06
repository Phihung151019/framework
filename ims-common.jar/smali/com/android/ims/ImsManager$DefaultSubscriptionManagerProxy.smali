.class Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Lcom/android/ims/ImsManager$SubscriptionManagerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSubscriptionManagerProxy"
.end annotation


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->mContext:Landroid/content/Context;

    .line 301
    return-void
.end method

.method private blacklist getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method


# virtual methods
.method public blacklist getActiveSubscriptionIdList()[I
    .locals 1

    .line 331
    invoke-direct {p0}, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultVoicePhoneId()I
    .locals 1

    .line 315
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    return v0
.end method

.method public blacklist getIntegerSubscriptionProperty(ILjava/lang/String;I)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 320
    iget-object v0, p0, Lcom/android/ims/ImsManager$DefaultSubscriptionManagerProxy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public blacklist getSubscriptionId(I)I
    .locals 1
    .param p1, "slotIndex"    # I

    .line 310
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    return v0
.end method

.method public blacklist isValidSubscriptionId(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 305
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    return v0
.end method

.method public blacklist setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;

    .line 326
    invoke-static {p1, p2, p3}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method
