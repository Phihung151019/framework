.class public Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;
.super Lcom/google/uwb/support/aliro/AliroParams;
.source "AliroRangingReconfiguredParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/uwb/support/aliro/AliroParams;-><init>()V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 44
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;

    move-result-object v0

    return-object v0

    .line 45
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

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;
    .locals 1
    .param p0, "unusedBundle"    # Landroid/os/PersistableBundle;

    .line 59
    new-instance v0, Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams$Builder;->build()Lcom/google/uwb/support/aliro/AliroRangingReconfiguredParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method
