.class public Lcom/google/uwb/support/profile/UuidBundleWrapper;
.super Ljava/lang/Object;
.source "UuidBundleWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field public static final SERVICE_INSTANCE_ID:Ljava/lang/String; = "service_instance_id"


# instance fields
.field private final mServiceInstanceID:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "serviceInstanceID":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/util/UUID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/uwb/support/profile/UuidBundleWrapper;->mServiceInstanceID:Ljava/util/Optional;

    .line 37
    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/profile/UuidBundleWrapper;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 61
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/profile/UuidBundleWrapper;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/profile/UuidBundleWrapper;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBundleVersion()I
    .locals 1

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public static isUuidBundle(Landroid/os/PersistableBundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 57
    const-string v0, "service_instance_id"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/profile/UuidBundleWrapper;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 71
    new-instance v0, Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;-><init>()V

    .line 72
    .local v0, "builder":Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;
    const-string v1, "service_instance_id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    nop

    .line 74
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;->setServiceInstanceID(Ljava/util/Optional;)Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;->build()Lcom/google/uwb/support/profile/UuidBundleWrapper;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getServiceInstanceID()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/uwb/support/profile/UuidBundleWrapper;->mServiceInstanceID:Ljava/util/Optional;

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 48
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 49
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-static {}, Lcom/google/uwb/support/profile/UuidBundleWrapper;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 50
    iget-object v1, p0, Lcom/google/uwb/support/profile/UuidBundleWrapper;->mServiceInstanceID:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/google/uwb/support/profile/UuidBundleWrapper;->mServiceInstanceID:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "service_instance_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-object v0
.end method
