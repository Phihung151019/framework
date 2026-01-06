.class public final synthetic Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$checkedRemoteRequest;


# instance fields
.field public final synthetic f$0:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic f$1:[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;


# direct methods
.method public synthetic constructor <init>(Landroid/system/keystore2/KeyDescriptor;[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iput-object p2, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda0;->f$1:[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iget-object v1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator$$ExternalSyntheticLambda0;->f$1:[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;

    invoke-static {v0, v1, p1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStoreKeyPairGenerator;->lambda$generateKeyPair$0(Landroid/system/keystore2/KeyDescriptor;[Lvendor/samsung/hardware/security/spqckeymaster/SehPQCKeyParameter;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;

    move-result-object p1

    return-object p1
.end method
