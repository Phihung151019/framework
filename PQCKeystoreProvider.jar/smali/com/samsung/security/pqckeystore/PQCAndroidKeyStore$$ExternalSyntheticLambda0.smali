.class public final synthetic Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$checkedRemoteRequest;


# instance fields
.field public final synthetic f$0:Landroid/system/keystore2/KeyDescriptor;


# direct methods
.method public synthetic constructor <init>(Landroid/system/keystore2/KeyDescriptor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore$$ExternalSyntheticLambda0;->f$0:Landroid/system/keystore2/KeyDescriptor;

    invoke-static {v0, p1}, Lcom/samsung/security/pqckeystore/PQCAndroidKeyStore;->lambda$loadAndroidKeyStoreKeyFromKeystore$2(Landroid/system/keystore2/KeyDescriptor;Landroid/security/samsungpqcoperation/ISamsungPqcOperation;)Landroid/security/samsungpqcoperation/PqcKeyMetadata;

    move-result-object p1

    return-object p1
.end method
