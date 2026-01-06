.class public Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;
.super Ljava/lang/Object;
.source "SessionConfigParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/oemextension/SessionConfigParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mOpenSessionParamsBundle:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionToken:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->mSessionToken:I

    .line 100
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->mOpenSessionParamsBundle:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/oemextension/SessionConfigParams;
    .locals 5

    .line 118
    new-instance v0, Lcom/google/uwb/support/oemextension/SessionConfigParams;

    iget-object v1, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->mSessionToken:I

    iget-object v4, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->mOpenSessionParamsBundle:Lcom/google/uwb/support/base/RequiredParam;

    .line 119
    invoke-virtual {v4}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/uwb/support/oemextension/SessionConfigParams;-><init>(JILandroid/os/PersistableBundle;)V

    .line 118
    return-object v0
.end method

.method public setOpenSessionParamsBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;
    .locals 1
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 113
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->mOpenSessionParamsBundle:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0, p1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 114
    return-object p0
.end method

.method public setSessionId(J)Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;
    .locals 2
    .param p1, "sessionId"    # J

    .line 103
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 104
    return-object p0
.end method

.method public setSessiontoken(I)Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;
    .locals 0
    .param p1, "sessionToken"    # I

    .line 108
    iput p1, p0, Lcom/google/uwb/support/oemextension/SessionConfigParams$Builder;->mSessionToken:I

    .line 109
    return-object p0
.end method
