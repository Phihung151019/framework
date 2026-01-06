.class public Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;
.super Ljava/lang/Object;
.source "RfTestNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/oemextension/RfTestNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mRfTestNtfData:[B

.field private mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;
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

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;->mRfTestNtfData:[B

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/oemextension/RfTestNotification;
    .locals 4

    .line 135
    new-instance v0, Lcom/google/uwb/support/oemextension/RfTestNotification;

    iget-object v1, p0, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;->mRfTestNtfData:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/uwb/support/oemextension/RfTestNotification;-><init>(I[BLcom/google/uwb/support/oemextension/RfTestNotification$1;)V

    return-object v0
.end method

.method public setRfTestNtfData([B)Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;
    .locals 0
    .param p1, "rfTestNtfData"    # [B

    .line 125
    iput-object p1, p0, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;->mRfTestNtfData:[B

    .line 126
    return-object p0
.end method

.method public setRfTestOperationType(I)Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;
    .locals 2
    .param p1, "rfTestOperationType"    # I

    .line 130
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;->mRfTestOperationType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 131
    return-object p0
.end method
