.class public Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;
.super Lcom/google/uwb/support/fira/FiraParams;
.source "FiraMulticastListUpdateStatusCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_STATUS_CODE:Ljava/lang/String; = "multicast_list_update_status_code"


# instance fields
.field private final mStatusCode:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 32
    invoke-direct {p0}, Lcom/google/uwb/support/fira/FiraParams;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;->mStatusCode:I

    .line 34
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode$1;

    .line 24
    invoke-direct {p0, p1}, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;-><init>(I)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 54
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static isBundleValid(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 68
    const-string v0, "multicast_list_update_status_code"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 72
    new-instance v0, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode$Builder;-><init>()V

    .line 73
    const-string v1, "multicast_list_update_status_code"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode$Builder;->setStatusCode(I)Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode$Builder;->build()Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;

    move-result-object v0

    .line 72
    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;->mStatusCode:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 48
    invoke-super {p0}, Lcom/google/uwb/support/fira/FiraParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 49
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "multicast_list_update_status_code"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraMulticastListUpdateStatusCode;->mStatusCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 50
    return-object v0
.end method
