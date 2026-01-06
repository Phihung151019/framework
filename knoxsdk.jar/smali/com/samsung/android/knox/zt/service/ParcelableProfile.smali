.class public Lcom/samsung/android/knox/zt/service/ParcelableProfile;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/zt/service/ParcelableProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mChallengePassword:Ljava/lang/String;

.field public blacklist mClientIdentifierType:I

.field public blacklist mClientIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mKeyAlias:Ljava/lang/String;

.field public blacklist mKeyExtendedPurposes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mKeyOwner:I

.field public blacklist mKeyProvider:Ljava/lang/String;

.field public blacklist mProtocol:Ljava/lang/String;

.field public blacklist mProvisionType:Ljava/lang/String;

.field public blacklist mRootCA:Ljava/lang/String;

.field public blacklist mServerHost:Ljava/lang/String;

.field public blacklist mServerPath:Ljava/lang/String;

.field public blacklist mServerPort:Ljava/lang/String;

.field public blacklist mSubject:Landroid/os/Bundle;

.field public blacklist mSubjectAltName:Landroid/os/Bundle;

.field public blacklist mSystemKeyPurposes:I

.field public blacklist mSystemKeySize:I

.field public blacklist mSystemKeyType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/zt/service/ParcelableProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    iget-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    invoke-virtual {p0, p6}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {p0, p7}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    invoke-virtual {p0, p8}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    invoke-virtual {p0, p9}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    invoke-virtual {p0, p10}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    invoke-virtual {p0, p11}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    invoke-virtual {p0, p12}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    invoke-virtual {p0, p13}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    iput p14, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    move-object/from16 p1, p15

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    move-object/from16 p1, p16

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    move/from16 p1, p17

    iput p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    move/from16 p1, p18

    iput p1, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getChallengePassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getClientIdentifierType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    return p0
.end method

.method public blacklist getClientIdentifiers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getKeyAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getKeyExtendedPurposes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getKeyOwner()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    return p0
.end method

.method public blacklist getKeyProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getProvisionType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRootCA()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getServerHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getServerPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getServerPort()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSubject()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist getSubjectAltName()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist getSystemKeyPurposes()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    return p0
.end method

.method public blacklist getSystemKeySize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    return p0
.end method

.method public blacklist getSystemKeyType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    return-object p0
.end method

.method public final blacklist nonEmptyOf(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    if-nez p1, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final blacklist nonEmptyOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final blacklist nonEmptyOf(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mRootCA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mProvisionType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyOwner:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubject:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerHost:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPort:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mServerPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSubjectAltName:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mKeyExtendedPurposes:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mChallengePassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifierType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mClientIdentifiers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeyPurposes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/knox/zt/service/ParcelableProfile;->mSystemKeySize:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
