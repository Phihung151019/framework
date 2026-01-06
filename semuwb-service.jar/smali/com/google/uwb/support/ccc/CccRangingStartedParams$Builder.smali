.class public final Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;
.super Ljava/lang/Object;
.source "CccRangingStartedParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/ccc/CccRangingStartedParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mHopModeKey:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingStsIndex:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUwbTime0:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mStartingStsIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 124
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mUwbTime0:Lcom/google/uwb/support/base/RequiredParam;

    .line 125
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mHopModeKey:Lcom/google/uwb/support/base/RequiredParam;

    .line 126
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 127
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    .line 122
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mStartingStsIndex:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    .line 122
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mUwbTime0:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    .line 122
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mHopModeKey:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    .line 122
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    .line 122
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/ccc/CccRangingStartedParams;
    .locals 2

    .line 155
    new-instance v0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams;-><init>(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;Lcom/google/uwb/support/ccc/CccRangingStartedParams$1;)V

    return-object v0
.end method

.method public setHopModeKey(I)Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;
    .locals 2
    .param p1, "hopModeKey"    # I

    .line 140
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mHopModeKey:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 141
    return-object p0
.end method

.method public setRanMultiplier(I)Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;
    .locals 2
    .param p1, "ranMultiplier"    # I

    .line 150
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 151
    return-object p0
.end method

.method public setStartingStsIndex(I)Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;
    .locals 2
    .param p1, "startingStsIndex"    # I

    .line 130
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mStartingStsIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 131
    return-object p0
.end method

.method public setSyncCodeIndex(I)Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;
    .locals 2
    .param p1, "syncCodeIndex"    # I

    .line 145
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 146
    return-object p0
.end method

.method public setUwbTime0(J)Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;
    .locals 2
    .param p1, "uwbTime0"    # J

    .line 135
    iget-object v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->mUwbTime0:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 136
    return-object p0
.end method
