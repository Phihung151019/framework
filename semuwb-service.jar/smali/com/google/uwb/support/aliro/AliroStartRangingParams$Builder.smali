.class public Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;
.super Ljava/lang/Object;
.source "AliroStartRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/aliro/AliroStartRangingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAbsoluteInitiationTimeUs:J

.field private mInitiationTimeMs:J

.field private mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionId:Lcom/google/uwb/support/base/RequiredParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/uwb/support/base/RequiredParam<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStsIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    .line 130
    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mInitiationTimeMs:J

    .line 132
    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mStsIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    .line 128
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    .line 128
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    .line 128
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mInitiationTimeMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    .line 128
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    .line 128
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mStsIndex:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/aliro/AliroStartRangingParams;
    .locals 2

    .line 168
    new-instance v0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/uwb/support/aliro/AliroStartRangingParams;-><init>(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;Lcom/google/uwb/support/aliro/AliroStartRangingParams$1;)V

    return-object v0
.end method

.method public setAbsoluteInitiationTimeUs(J)Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;
    .locals 0
    .param p1, "absoluteInitiationTimeUs"    # J

    .line 163
    iput-wide p1, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mAbsoluteInitiationTimeUs:J

    .line 164
    return-object p0
.end method

.method public setInitiationTimeMs(J)Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;
    .locals 0
    .param p1, "initiationTimeMs"    # J

    .line 147
    iput-wide p1, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mInitiationTimeMs:J

    .line 148
    return-object p0
.end method

.method public setRanMultiplier(I)Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;
    .locals 2
    .param p1, "ranMultiplier"    # I

    .line 141
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mRanMultiplier:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 142
    return-object p0
.end method

.method public setSessionId(I)Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;
    .locals 2
    .param p1, "sessionId"    # I

    .line 136
    iget-object v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    .line 137
    return-object p0
.end method

.method public setStsIndex(I)Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;
    .locals 0
    .param p1, "stsIndex"    # I

    .line 152
    iput p1, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->mStsIndex:I

    .line 153
    return-object p0
.end method
