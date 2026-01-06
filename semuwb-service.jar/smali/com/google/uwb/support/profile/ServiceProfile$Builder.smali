.class public Lcom/google/uwb/support/profile/ServiceProfile$Builder;
.super Ljava/lang/Object;
.source "ServiceProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/profile/ServiceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mServiceID:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/profile/ServiceProfile$Builder;->mServiceID:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/profile/ServiceProfile;
    .locals 2

    .line 80
    new-instance v0, Lcom/google/uwb/support/profile/ServiceProfile;

    iget-object v1, p0, Lcom/google/uwb/support/profile/ServiceProfile$Builder;->mServiceID:Lcom/google/uwb/support/base/RequiredParam;

    .line 81
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/uwb/support/profile/ServiceProfile;-><init>(I)V

    .line 80
    return-object v0
.end method

.method public setServiceID(I)Lcom/google/uwb/support/profile/ServiceProfile$Builder;
    .locals 2
    .param p1, "serviceID"    # I

    .line 75
    iget-object v0, p0, Lcom/google/uwb/support/profile/ServiceProfile$Builder;->mServiceID:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 76
    return-object p0
.end method
