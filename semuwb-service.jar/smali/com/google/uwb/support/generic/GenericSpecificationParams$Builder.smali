.class public Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
.super Ljava/lang/Object;
.source "GenericSpecificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/generic/GenericSpecificationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAliroSpecificationParams:Lcom/google/uwb/support/aliro/AliroSpecificationParams;

.field private mAntennaModeCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/generic/GenericParams$AntennaModeCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private mCccSpecificationParams:Lcom/google/uwb/support/ccc/CccSpecificationParams;

.field private mFiraSpecificationParams:Lcom/google/uwb/support/fira/FiraSpecificationParams;

.field private mHasPowerStatsSupport:Z

.field private mMaxSupportedSessionCount:I

.field private mRadarSpecificationParams:Lcom/google/uwb/support/radar/RadarSpecificationParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mFiraSpecificationParams:Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 190
    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mCccSpecificationParams:Lcom/google/uwb/support/ccc/CccSpecificationParams;

    .line 191
    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mAliroSpecificationParams:Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    .line 192
    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mRadarSpecificationParams:Lcom/google/uwb/support/radar/RadarSpecificationParams;

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mHasPowerStatsSupport:Z

    .line 195
    const-class v0, Lcom/google/uwb/support/generic/GenericParams$AntennaModeCapabilityFlag;

    .line 196
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mAntennaModeCapabilities:Ljava/util/EnumSet;

    .line 197
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mMaxSupportedSessionCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Lcom/google/uwb/support/fira/FiraSpecificationParams;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    .line 188
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mFiraSpecificationParams:Lcom/google/uwb/support/fira/FiraSpecificationParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Lcom/google/uwb/support/ccc/CccSpecificationParams;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    .line 188
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mCccSpecificationParams:Lcom/google/uwb/support/ccc/CccSpecificationParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Lcom/google/uwb/support/aliro/AliroSpecificationParams;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    .line 188
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mAliroSpecificationParams:Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Lcom/google/uwb/support/radar/RadarSpecificationParams;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    .line 188
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mRadarSpecificationParams:Lcom/google/uwb/support/radar/RadarSpecificationParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    .line 188
    iget-boolean v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mHasPowerStatsSupport:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Ljava/util/EnumSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    .line 188
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mAntennaModeCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    .line 188
    iget v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mMaxSupportedSessionCount:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/generic/GenericSpecificationParams;
    .locals 2

    .line 264
    new-instance v0, Lcom/google/uwb/support/generic/GenericSpecificationParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/uwb/support/generic/GenericSpecificationParams;-><init>(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;Lcom/google/uwb/support/generic/GenericSpecificationParams$1;)V

    return-object v0
.end method

.method public hasPowerStatsSupport(Z)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 239
    iput-boolean p1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mHasPowerStatsSupport:Z

    .line 240
    return-object p0
.end method

.method public setAliroSpecificationParams(Lcom/google/uwb/support/aliro/AliroSpecificationParams;)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
    .locals 1
    .param p1, "aliroSpecificationParams"    # Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    .line 222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mAliroSpecificationParams:Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    .line 223
    return-object p0
.end method

.method public setAntennaModeCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/uwb/support/generic/GenericParams$AntennaModeCapabilityFlag;",
            ">;)",
            "Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;"
        }
    .end annotation

    .line 248
    .local p1, "antennaModeCapabilities":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/uwb/support/generic/GenericParams$AntennaModeCapabilityFlag;>;"
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mAntennaModeCapabilities:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 249
    return-object p0
.end method

.method public setCccSpecificationParams(Lcom/google/uwb/support/ccc/CccSpecificationParams;)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
    .locals 1
    .param p1, "cccSpecificationParams"    # Lcom/google/uwb/support/ccc/CccSpecificationParams;

    .line 213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/ccc/CccSpecificationParams;

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mCccSpecificationParams:Lcom/google/uwb/support/ccc/CccSpecificationParams;

    .line 214
    return-object p0
.end method

.method public setFiraSpecificationParams(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
    .locals 1
    .param p1, "firaSpecificationParams"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/fira/FiraSpecificationParams;

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mFiraSpecificationParams:Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 205
    return-object p0
.end method

.method public setMaxSupportedSessionCount(I)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 256
    iput p1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mMaxSupportedSessionCount:I

    .line 257
    return-object p0
.end method

.method public setRadarSpecificationParams(Lcom/google/uwb/support/radar/RadarSpecificationParams;)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
    .locals 1
    .param p1, "radarSpecificationParams"    # Lcom/google/uwb/support/radar/RadarSpecificationParams;

    .line 231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/uwb/support/radar/RadarSpecificationParams;

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->mRadarSpecificationParams:Lcom/google/uwb/support/radar/RadarSpecificationParams;

    .line 232
    return-object p0
.end method
