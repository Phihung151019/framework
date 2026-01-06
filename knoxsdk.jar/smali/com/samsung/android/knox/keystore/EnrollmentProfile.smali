.class public abstract Lcom/samsung/android/knox/keystore/EnrollmentProfile;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/EnrollmentProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist certificateAlias:Ljava/lang/String;

.field public greylist credentialStorageBundle:Landroid/os/Bundle;

.field public greylist csrExtra:Landroid/os/Bundle;

.field public greylist hashAlgorithmType:Ljava/lang/String;

.field public greylist keyPairAlgorithm:Ljava/lang/String;

.field public greylist keySize:I

.field public greylist keystoreType:Ljava/lang/String;

.field public greylist profileType:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/EnrollmentProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->csrExtra:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public greylist getCertificateAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getKeyPairAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getKeySize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keySize:I

    return p0
.end method

.method public greylist getKeystoreType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    return-object p0
.end method

.method public abstract greylist getProfileType()Ljava/lang/String;
.end method

.method public greylist setCertificateAlias(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    return-void
.end method

.method public greylist setKeyPairAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public greylist setKeySize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keySize:I

    return-void
.end method

.method public greylist setKeystoreType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    return-void
.end method
