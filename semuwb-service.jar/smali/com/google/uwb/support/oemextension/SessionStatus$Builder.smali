.class public Lcom/google/uwb/support/oemextension/SessionStatus$Builder;
.super Ljava/lang/Object;
.source "SessionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/oemextension/SessionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppPackageName:Ljava/lang/String;

.field private mProtocolName:Ljava/lang/String;

.field private final mReasonCode:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
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

.field private final mState:Lcom/google/uwb/support/base/RequiredParam;
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

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 122
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mState:Lcom/google/uwb/support/base/RequiredParam;

    .line 123
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mReasonCode:Lcom/google/uwb/support/base/RequiredParam;

    .line 124
    const-string v0, "UnknownPackageName"

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mAppPackageName:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mSessionToken:I

    .line 126
    const-string v0, "UnknownProtocolName"

    iput-object v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mProtocolName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/oemextension/SessionStatus;
    .locals 9

    .line 159
    new-instance v0, Lcom/google/uwb/support/oemextension/SessionStatus;

    iget-object v1, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 160
    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mState:Lcom/google/uwb/support/base/RequiredParam;

    .line 161
    invoke-virtual {v3}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mReasonCode:Lcom/google/uwb/support/base/RequiredParam;

    .line 162
    invoke-virtual {v4}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mAppPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mSessionToken:I

    iget-object v7, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mProtocolName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/uwb/support/oemextension/SessionStatus;-><init>(JIILjava/lang/String;ILjava/lang/String;Lcom/google/uwb/support/oemextension/SessionStatus$1;)V

    .line 159
    return-object v0
.end method

.method public setAppPackageName(Ljava/lang/String;)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;
    .locals 0
    .param p1, "appPackageName"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mAppPackageName:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setProtocolName(Ljava/lang/String;)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;
    .locals 0
    .param p1, "protocolName"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mProtocolName:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setReasonCode(I)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;
    .locals 2
    .param p1, "reasonCode"    # I

    .line 139
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mReasonCode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 140
    return-object p0
.end method

.method public setSessionId(J)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;
    .locals 2
    .param p1, "sessionId"    # J

    .line 129
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 130
    return-object p0
.end method

.method public setSessiontoken(I)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;
    .locals 0
    .param p1, "sessionToken"    # I

    .line 149
    iput p1, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mSessionToken:I

    .line 150
    return-object p0
.end method

.method public setState(I)Lcom/google/uwb/support/oemextension/SessionStatus$Builder;
    .locals 2
    .param p1, "state"    # I

    .line 134
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/SessionStatus$Builder;->mState:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 135
    return-object p0
.end method
