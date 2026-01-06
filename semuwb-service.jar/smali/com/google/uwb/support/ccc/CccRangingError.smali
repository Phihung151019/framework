.class public Lcom/google/uwb/support/ccc/CccRangingError;
.super Lcom/google/uwb/support/ccc/CccParams;
.source "CccRangingError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/ccc/CccRangingError$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_ERROR_CODE:Ljava/lang/String; = "error_code"


# instance fields
.field private final mError:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "error"    # I

    .line 49
    invoke-direct {p0}, Lcom/google/uwb/support/ccc/CccParams;-><init>()V

    .line 50
    iput p1, p0, Lcom/google/uwb/support/ccc/CccRangingError;->mError:I

    .line 51
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/uwb/support/ccc/CccRangingError$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/google/uwb/support/ccc/CccRangingError$1;

    .line 41
    invoke-direct {p0, p1}, Lcom/google/uwb/support/ccc/CccRangingError;-><init>(I)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccRangingError;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 59
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccRangingError;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccRangingError;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccRangingError;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccRangingError;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid protocol or protocol version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccRangingError;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 73
    new-instance v0, Lcom/google/uwb/support/ccc/CccRangingError$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/ccc/CccRangingError$Builder;-><init>()V

    const-string v1, "error_code"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccRangingError$Builder;->setError(I)Lcom/google/uwb/support/ccc/CccRangingError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/ccc/CccRangingError$Builder;->build()Lcom/google/uwb/support/ccc/CccRangingError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public getError()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/google/uwb/support/ccc/CccRangingError;->mError:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 78
    invoke-super {p0}, Lcom/google/uwb/support/ccc/CccParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 79
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "error_code"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccRangingError;->mError:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    return-object v0
.end method
