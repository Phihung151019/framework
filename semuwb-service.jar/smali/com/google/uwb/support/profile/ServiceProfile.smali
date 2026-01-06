.class public Lcom/google/uwb/support/profile/ServiceProfile;
.super Ljava/lang/Object;
.source "ServiceProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/profile/ServiceProfile$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field public static final SERVICE_ID:Ljava/lang/String; = "service_id"


# instance fields
.field private final mServiceID:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "serviceID"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/google/uwb/support/profile/ServiceProfile;->mServiceID:I

    .line 45
    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/profile/ServiceProfile;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 55
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/profile/ServiceProfile;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/profile/ServiceProfile;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBundleVersion()I
    .locals 1

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/profile/ServiceProfile;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 65
    new-instance v0, Lcom/google/uwb/support/profile/ServiceProfile$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/profile/ServiceProfile$Builder;-><init>()V

    .line 66
    const-string v1, "service_id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/profile/ServiceProfile$Builder;->setServiceID(I)Lcom/google/uwb/support/profile/ServiceProfile$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/uwb/support/profile/ServiceProfile$Builder;->build()Lcom/google/uwb/support/profile/ServiceProfile;

    move-result-object v0

    .line 65
    return-object v0
.end method


# virtual methods
.method public getServiceID()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/uwb/support/profile/ServiceProfile;->mServiceID:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 48
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 49
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-static {}, Lcom/google/uwb/support/profile/ServiceProfile;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v1, "service_id"

    iget v2, p0, Lcom/google/uwb/support/profile/ServiceProfile;->mServiceID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 51
    return-object v0
.end method
