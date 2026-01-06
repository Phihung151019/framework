.class public Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;
.super Lcom/google/uwb/support/aliro/AliroParams;
.source "AliroRangingStoppedParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_LAST_STS_INDEX:Ljava/lang/String; = "last_sts_index"


# instance fields
.field private final mLastStsIndexUsed:I


# direct methods
.method private constructor <init>(Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;

    .line 41
    invoke-direct {p0}, Lcom/google/uwb/support/aliro/AliroParams;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;->access$000(Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;->mLastStsIndexUsed:I

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;
    .param p2, "x1"    # Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$1;

    .line 32
    invoke-direct {p0, p1}, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;-><init>(Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 58
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;

    move-result-object v0

    return-object v0

    .line 59
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

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 76
    new-instance v0, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;-><init>()V

    .line 77
    const-string v1, "last_sts_index"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;->setLastStsIndexUsed(I)Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams$Builder;->build()Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;

    move-result-object v0

    .line 76
    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getLastStsIndexUsed()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;->mLastStsIndexUsed:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 52
    invoke-super {p0}, Lcom/google/uwb/support/aliro/AliroParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 53
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "last_sts_index"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroRangingStoppedParams;->mLastStsIndexUsed:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    return-object v0
.end method
