.class public final Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;
.super Ljava/lang/Object;
.source "AliroRangingStartedParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/aliro/AliroRangingStartedParams;
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

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mStartingStsIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 127
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mUwbTime0:Lcom/google/uwb/support/base/RequiredParam;

    .line 128
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mHopModeKey:Lcom/google/uwb/support/base/RequiredParam;

    .line 129
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    .line 130
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    .line 125
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mStartingStsIndex:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    .line 125
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mUwbTime0:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    .line 125
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mHopModeKey:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    .line 125
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    .line 125
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/aliro/AliroRangingStartedParams;
    .locals 2

    .line 158
    new-instance v0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;-><init>(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;Lcom/google/uwb/support/aliro/AliroRangingStartedParams$1;)V

    return-object v0
.end method

.method public setHopModeKey(I)Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;
    .locals 2
    .param p1, "hopModeKey"    # I

    .line 143
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mHopModeKey:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 144
    return-object p0
.end method

.method public setRanMultiplier(I)Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;
    .locals 2
    .param p1, "ranMultiplier"    # I

    .line 153
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 154
    return-object p0
.end method

.method public setStartingStsIndex(I)Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;
    .locals 2
    .param p1, "startingStsIndex"    # I

    .line 133
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mStartingStsIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 134
    return-object p0
.end method

.method public setSyncCodeIndex(I)Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;
    .locals 2
    .param p1, "syncCodeIndex"    # I

    .line 148
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mSyncCodeIndex:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 149
    return-object p0
.end method

.method public setUwbTime0(J)Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;
    .locals 2
    .param p1, "uwbTime0"    # J

    .line 138
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->mUwbTime0:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 139
    return-object p0
.end method
