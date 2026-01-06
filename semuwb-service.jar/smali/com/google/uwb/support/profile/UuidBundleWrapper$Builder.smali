.class public Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;
.super Ljava/lang/Object;
.source "UuidBundleWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/profile/UuidBundleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mServiceInstanceID:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;->mServiceInstanceID:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/profile/UuidBundleWrapper;
    .locals 2

    .line 89
    new-instance v0, Lcom/google/uwb/support/profile/UuidBundleWrapper;

    iget-object v1, p0, Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;->mServiceInstanceID:Ljava/util/Optional;

    invoke-direct {v0, v1}, Lcom/google/uwb/support/profile/UuidBundleWrapper;-><init>(Ljava/util/Optional;)V

    return-object v0
.end method

.method public setServiceInstanceID(Ljava/util/Optional;)Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/UUID;",
            ">;)",
            "Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;"
        }
    .end annotation

    .line 84
    .local p1, "serviceInstanceID":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/util/UUID;>;"
    iput-object p1, p0, Lcom/google/uwb/support/profile/UuidBundleWrapper$Builder;->mServiceInstanceID:Ljava/util/Optional;

    .line 85
    return-object p0
.end method
