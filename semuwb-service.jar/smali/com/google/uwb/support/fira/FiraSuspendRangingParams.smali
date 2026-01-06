.class public Lcom/google/uwb/support/fira/FiraSuspendRangingParams;
.super Lcom/google/uwb/support/fira/FiraParams;
.source "FiraSuspendRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraSuspendRangingParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_SUSPEND_RANGING_ROUNDS:Ljava/lang/String; = "suspend_ranging_rounds"


# instance fields
.field private final mSuspendRangingRounds:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "suspendRangingRounds"    # I

    .line 38
    invoke-direct {p0}, Lcom/google/uwb/support/fira/FiraParams;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/uwb/support/fira/FiraSuspendRangingParams;->mSuspendRangingRounds:I

    .line 40
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/uwb/support/fira/FiraSuspendRangingParams$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/google/uwb/support/fira/FiraSuspendRangingParams$1;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/uwb/support/fira/FiraSuspendRangingParams;-><init>(I)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraSuspendRangingParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 60
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraSuspendRangingParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraSuspendRangingParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraSuspendRangingParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraSuspendRangingParams;

    move-result-object v0

    return-object v0

    .line 61
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

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraSuspendRangingParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 74
    new-instance v0, Lcom/google/uwb/support/fira/FiraSuspendRangingParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraSuspendRangingParams$Builder;-><init>()V

    .line 76
    .local v0, "builder":Lcom/google/uwb/support/fira/FiraSuspendRangingParams$Builder;
    nop

    .line 77
    const-string v1, "suspend_ranging_rounds"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraSuspendRangingParams$Builder;->setSuspendRangingRounds(I)Lcom/google/uwb/support/fira/FiraSuspendRangingParams$Builder;

    .line 78
    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraSuspendRangingParams$Builder;->build()Lcom/google/uwb/support/fira/FiraSuspendRangingParams;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public getSuspendRangingRounds()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/google/uwb/support/fira/FiraSuspendRangingParams;->mSuspendRangingRounds:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/google/uwb/support/fira/FiraParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 55
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "suspend_ranging_rounds"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraSuspendRangingParams;->mSuspendRangingRounds:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    return-object v0
.end method
