.class public Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# instance fields
.field public greylist mIsManaged:Z

.field public greylist mOptions:Landroid/os/Bundle;

.field public greylist mSourceUid:I


# direct methods
.method public constructor greylist <init>(IZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mSourceUid:I

    iput-boolean p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mIsManaged:Z

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public greylist getOptions()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public greylist getSourceUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mSourceUid:I

    return p0
.end method

.method public greylist isManaged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mIsManaged:Z

    return p0
.end method
