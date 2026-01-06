.class public Lcom/samsung/security/pqckeystore/PQCAndroidKeyStorePrivateKey;
.super Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;
.source "PQCAndroidKeyStorePrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/security/samsungpqcoperation/PqcAuthorization;Ljava/lang/String;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)V
    .locals 0
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "keyId"    # J
    .param p4, "authorizations"    # [Landroid/security/samsungpqcoperation/PqcAuthorization;
    .param p5, "algorithm"    # Ljava/lang/String;
    .param p6, "pqcOperation"    # Landroid/security/samsungpqcoperation/ISamsungPqcOperation;

    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/security/samsungpqcoperation/PqcAuthorization;Ljava/lang/String;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)V

    .line 38
    return-void
.end method
