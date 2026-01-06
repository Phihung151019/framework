.class public Lcom/google/uwb/support/fira/FiraPoseUpdateParams;
.super Lcom/google/uwb/support/fira/FiraParams;
.source "FiraPoseUpdateParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_POSE_VQ:Ljava/lang/String; = "pose_vq"


# instance fields
.field private final mPoseInfo:[D


# direct methods
.method private constructor <init>([D)V
    .locals 0
    .param p1, "poseInfo"    # [D

    .line 42
    invoke-direct {p0}, Lcom/google/uwb/support/fira/FiraParams;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraPoseUpdateParams;->mPoseInfo:[D

    .line 44
    return-void
.end method

.method synthetic constructor <init>([DLcom/google/uwb/support/fira/FiraPoseUpdateParams$1;)V
    .locals 0
    .param p1, "x0"    # [D
    .param p2, "x1"    # Lcom/google/uwb/support/fira/FiraPoseUpdateParams$1;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/uwb/support/fira/FiraPoseUpdateParams;-><init>([D)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraPoseUpdateParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 57
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraPoseUpdateParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraPoseUpdateParams;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraPoseUpdateParams;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraPoseUpdateParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 67
    new-instance v0, Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;-><init>()V

    const-string v1, "pose_vq"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;->setPose([D)Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraPoseUpdateParams$Builder;->build()Lcom/google/uwb/support/fira/FiraPoseUpdateParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public getPoseInfo()[D
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraPoseUpdateParams;->mPoseInfo:[D

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 49
    invoke-super {p0}, Lcom/google/uwb/support/fira/FiraParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 50
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "pose_vq"

    iget-object v2, p0, Lcom/google/uwb/support/fira/FiraPoseUpdateParams;->mPoseInfo:[D

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 52
    return-object v0
.end method
