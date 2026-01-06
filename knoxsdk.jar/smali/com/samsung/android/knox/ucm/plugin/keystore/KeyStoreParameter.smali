.class public Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# static fields
.field public static greylist PRIVATE_RESOURCE:I = 0x0

.field public static greylist SHARED_KEYCHAIN_RESOURCE:I = 0x1

.field public static greylist SHARED_WIFI_RESOURCE:I = 0x2

.field public static greylist UID_SELF:I = -0x1


# instance fields
.field public final greylist mOptions:Landroid/os/Bundle;

.field public final greylist mOwnerUid:I

.field public final greylist mResourceId:I


# direct methods
.method public constructor greylist <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mResourceId:I

    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOwnerUid:I

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public greylist getOptions()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public greylist getOwnerUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOwnerUid:I

    return p0
.end method

.method public greylist getResourceId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mResourceId:I

    return p0
.end method
