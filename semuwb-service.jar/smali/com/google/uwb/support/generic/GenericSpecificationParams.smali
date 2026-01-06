.class public Lcom/google/uwb/support/generic/GenericSpecificationParams;
.super Lcom/google/uwb/support/generic/GenericParams;
.source "GenericSpecificationParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final DEFAULT_MAX_SUPPORTED_SESSIONS_COUNT:I = 0x5

.field private static final KEY_ALIRO_SPECIFICATION_PARAMS:Ljava/lang/String; = "aliro"

.field private static final KEY_CCC_SPECIFICATION_PARAMS:Ljava/lang/String; = "ccc"

.field private static final KEY_FIRA_SPECIFICATION_PARAMS:Ljava/lang/String; = "fira"

.field private static final KEY_MAX_SUPPORTED_SESSION_COUNT:Ljava/lang/String; = "max_supported_session_count"

.field private static final KEY_POWER_STATS_QUERY_SUPPORT:Ljava/lang/String; = "power_stats_query"

.field private static final KEY_RADAR_SPECIFICATION_PARAMS:Ljava/lang/String; = "radar"

.field private static final KEY_SUPPORTED_ANTENNA_MODES:Ljava/lang/String; = "supported_antenna_modes"


# instance fields
.field private final mAliroSpecificationParams:Lcom/google/uwb/support/aliro/AliroSpecificationParams;

.field private final mAntennaModeCapabilities:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/generic/GenericParams$AntennaModeCapabilityFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final mCccSpecificationParams:Lcom/google/uwb/support/ccc/CccSpecificationParams;

.field private mFiraSpecificationParams:Lcom/google/uwb/support/fira/FiraSpecificationParams;

.field private final mHasPowerStatsSupport:Z

.field private final mMaxSupportedSessionCount:I

.field private final mRadarSpecificationParams:Lcom/google/uwb/support/radar/RadarSpecificationParams;


# direct methods
.method private constructor <init>(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    .line 66
    invoke-direct {p0}, Lcom/google/uwb/support/generic/GenericParams;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->access$000(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Lcom/google/uwb/support/fira/FiraSpecificationParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mFiraSpecificationParams:Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 68
    invoke-static {p1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->access$100(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Lcom/google/uwb/support/ccc/CccSpecificationParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mCccSpecificationParams:Lcom/google/uwb/support/ccc/CccSpecificationParams;

    .line 69
    invoke-static {p1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->access$200(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mAliroSpecificationParams:Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    .line 70
    invoke-static {p1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->access$300(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Lcom/google/uwb/support/radar/RadarSpecificationParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mRadarSpecificationParams:Lcom/google/uwb/support/radar/RadarSpecificationParams;

    .line 71
    invoke-static {p1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->access$400(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mHasPowerStatsSupport:Z

    .line 72
    invoke-static {p1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->access$500(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mAntennaModeCapabilities:Ljava/util/EnumSet;

    .line 73
    invoke-static {p1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->access$600(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mMaxSupportedSessionCount:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;Lcom/google/uwb/support/generic/GenericSpecificationParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
    .param p2, "x1"    # Lcom/google/uwb/support/generic/GenericSpecificationParams$1;

    .line 44
    invoke-direct {p0, p1}, Lcom/google/uwb/support/generic/GenericSpecificationParams;-><init>(Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/generic/GenericSpecificationParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 145
    invoke-static {p0}, Lcom/google/uwb/support/generic/GenericSpecificationParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/generic/GenericSpecificationParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/generic/GenericSpecificationParams;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/generic/GenericSpecificationParams;
    .locals 5
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 155
    new-instance v0, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;-><init>()V

    .line 157
    const-string v1, "supported_antenna_modes"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 158
    invoke-static {}, Lcom/google/uwb/support/generic/GenericParams$AntennaModeCapabilityFlag;->values()[Lcom/google/uwb/support/generic/GenericParams$AntennaModeCapabilityFlag;

    move-result-object v2

    .line 156
    invoke-static {v1, v2}, Lcom/google/uwb/support/base/FlagEnum;->toEnumSet(I[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->setAntennaModeCapabilities(Ljava/util/Collection;)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    move-result-object v0

    .line 159
    const-string v1, "max_supported_session_count"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->setMaxSupportedSessionCount(I)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    move-result-object v0

    .line 160
    const-string v1, "power_stats_query"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->hasPowerStatsSupport(Z)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    move-result-object v0

    .line 162
    .local v0, "builder":Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;
    nop

    .line 164
    const-string v1, "fira"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 163
    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraSpecificationParams;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->setFiraSpecificationParams(Lcom/google/uwb/support/fira/FiraSpecificationParams;)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    move-result-object v0

    .line 166
    const-string v1, "ccc"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 167
    .local v1, "cccBundle":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 168
    nop

    .line 169
    invoke-static {v1}, Lcom/google/uwb/support/ccc/CccSpecificationParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccSpecificationParams;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v2}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->setCccSpecificationParams(Lcom/google/uwb/support/ccc/CccSpecificationParams;)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    move-result-object v0

    .line 172
    :cond_0
    const-string v2, "aliro"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 173
    .local v2, "aliroBundle":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_1

    .line 174
    nop

    .line 175
    invoke-static {v2}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    move-result-object v3

    .line 174
    invoke-virtual {v0, v3}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->setAliroSpecificationParams(Lcom/google/uwb/support/aliro/AliroSpecificationParams;)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    move-result-object v0

    .line 178
    :cond_1
    const-string v3, "radar"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 180
    .local v3, "radarBundle":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_2

    .line 181
    nop

    .line 182
    invoke-static {v3}, Lcom/google/uwb/support/radar/RadarSpecificationParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarSpecificationParams;

    move-result-object v4

    .line 181
    invoke-virtual {v0, v4}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->setRadarSpecificationParams(Lcom/google/uwb/support/radar/RadarSpecificationParams;)Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;

    move-result-object v0

    .line 184
    :cond_2
    invoke-virtual {v0}, Lcom/google/uwb/support/generic/GenericSpecificationParams$Builder;->build()Lcom/google/uwb/support/generic/GenericSpecificationParams;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getAliroSpecificationParams()Lcom/google/uwb/support/aliro/AliroSpecificationParams;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mAliroSpecificationParams:Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    return-object v0
.end method

.method public getAntennaModeCapabilities()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/google/uwb/support/generic/GenericParams$AntennaModeCapabilityFlag;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mAntennaModeCapabilities:Ljava/util/EnumSet;

    return-object v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public getCccSpecificationParams()Lcom/google/uwb/support/ccc/CccSpecificationParams;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mCccSpecificationParams:Lcom/google/uwb/support/ccc/CccSpecificationParams;

    return-object v0
.end method

.method public getFiraSpecificationParams()Lcom/google/uwb/support/fira/FiraSpecificationParams;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mFiraSpecificationParams:Lcom/google/uwb/support/fira/FiraSpecificationParams;

    return-object v0
.end method

.method public getMaxSupportedSessionCount()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mMaxSupportedSessionCount:I

    return v0
.end method

.method public getRadarSpecificationParams()Lcom/google/uwb/support/radar/RadarSpecificationParams;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mRadarSpecificationParams:Lcom/google/uwb/support/radar/RadarSpecificationParams;

    return-object v0
.end method

.method public hasPowerStatsSupport()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mHasPowerStatsSupport:Z

    return v0
.end method

.method public setFiraSpecificationParams(Lcom/google/uwb/support/fira/FiraSpecificationParams;)V
    .locals 0
    .param p1, "params"    # Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 118
    iput-object p1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mFiraSpecificationParams:Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 119
    return-void
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 123
    invoke-super {p0}, Lcom/google/uwb/support/generic/GenericParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 124
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mFiraSpecificationParams:Lcom/google/uwb/support/fira/FiraSpecificationParams;

    .line 125
    invoke-virtual {v1}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 124
    const-string v2, "fira"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 126
    iget-object v1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mAliroSpecificationParams:Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mAliroSpecificationParams:Lcom/google/uwb/support/aliro/AliroSpecificationParams;

    .line 128
    invoke-virtual {v1}, Lcom/google/uwb/support/aliro/AliroSpecificationParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 127
    const-string v2, "aliro"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mCccSpecificationParams:Lcom/google/uwb/support/ccc/CccSpecificationParams;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mCccSpecificationParams:Lcom/google/uwb/support/ccc/CccSpecificationParams;

    .line 132
    invoke-virtual {v1}, Lcom/google/uwb/support/ccc/CccSpecificationParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 131
    const-string v2, "ccc"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mRadarSpecificationParams:Lcom/google/uwb/support/radar/RadarSpecificationParams;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mRadarSpecificationParams:Lcom/google/uwb/support/radar/RadarSpecificationParams;

    .line 136
    invoke-virtual {v1}, Lcom/google/uwb/support/radar/RadarSpecificationParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 135
    const-string v2, "radar"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 138
    :cond_2
    const-string v1, "power_stats_query"

    iget-boolean v2, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mHasPowerStatsSupport:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    iget-object v1, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mAntennaModeCapabilities:Ljava/util/EnumSet;

    invoke-static {v1}, Lcom/google/uwb/support/base/FlagEnum;->toInt(Ljava/util/Set;)I

    move-result v1

    const-string v2, "supported_antenna_modes"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v1, "max_supported_session_count"

    iget v2, p0, Lcom/google/uwb/support/generic/GenericSpecificationParams;->mMaxSupportedSessionCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 141
    return-object v0
.end method
