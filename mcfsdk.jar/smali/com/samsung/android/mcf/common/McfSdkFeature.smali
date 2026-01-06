.class public final enum Lcom/samsung/android/mcf/common/McfSdkFeature;
.super Ljava/lang/Enum;
.source "McfSdkFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mcf/common/McfSdkFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum BleAdapter:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum BleProvider:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum MusicShare:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum SmcfCCC:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum UWBRanging:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum WifiTogether:Lcom/samsung/android/mcf/common/McfSdkFeature;


# instance fields
.field public final feature:I

.field public final minSupportVersion:I

.field public final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/mcf/common/McfSdkFeature;
    .locals 7

    .line 5
    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->MusicShare:Lcom/samsung/android/mcf/common/McfSdkFeature;

    sget-object v1, Lcom/samsung/android/mcf/common/McfSdkFeature;->WifiTogether:Lcom/samsung/android/mcf/common/McfSdkFeature;

    sget-object v2, Lcom/samsung/android/mcf/common/McfSdkFeature;->UWBRanging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    sget-object v3, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleAdapter:Lcom/samsung/android/mcf/common/McfSdkFeature;

    sget-object v4, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleProvider:Lcom/samsung/android/mcf/common/McfSdkFeature;

    sget-object v5, Lcom/samsung/android/mcf/common/McfSdkFeature;->SmcfCCC:Lcom/samsung/android/mcf/common/McfSdkFeature;

    sget-object v6, Lcom/samsung/android/mcf/common/McfSdkFeature;->Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/mcf/common/McfSdkFeature;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 13
    new-instance v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const v4, 0x1ae14

    const-string v5, "MusicShare"

    const-string v1, "MusicShare"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->MusicShare:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 14
    new-instance v1, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const v5, 0x1afa4

    const-string v6, "WifiTogether"

    const-string v2, "WifiTogether"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/mcf/common/McfSdkFeature;->WifiTogether:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 15
    new-instance v2, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const v6, 0x1afa4

    const-string v7, "UWBRanging"

    const-string v3, "UWBRanging"

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/mcf/common/McfSdkFeature;->UWBRanging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 16
    new-instance v3, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const v7, 0x1afa4

    const-string v8, "BleAdapter"

    const-string v4, "BleAdapter"

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleAdapter:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 17
    new-instance v4, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const v8, 0x1fbd0

    const-string v9, "BleProvider"

    const-string v5, "BleProvider"

    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleProvider:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 18
    new-instance v5, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const v9, 0x1d4c0

    const-string v10, "SmcfCCC"

    const-string v6, "SmcfCCC"

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/mcf/common/McfSdkFeature;->SmcfCCC:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 19
    new-instance v6, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const v10, 0x1afa4

    const-string v11, "Messaging"

    const-string v7, "Messaging"

    const/4 v8, 0x6

    const/4 v9, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/mcf/common/McfSdkFeature;->Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    .line 5
    invoke-static {}, Lcom/samsung/android/mcf/common/McfSdkFeature;->$values()[Lcom/samsung/android/mcf/common/McfSdkFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->$VALUES:[Lcom/samsung/android/mcf/common/McfSdkFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "feature"    # I
    .param p4, "minSupportVersion"    # I
    .param p5, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->feature:I

    .line 28
    iput p4, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->minSupportVersion:I

    .line 29
    iput-object p5, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mcf/common/McfSdkFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/mcf/common/McfSdkFeature;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->$VALUES:[Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/mcf/common/McfSdkFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mcf/common/McfSdkFeature;

    return-object v0
.end method


# virtual methods
.method public getFeatureValue()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->feature:I

    return v0
.end method

.method public getSupportVersion()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->minSupportVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->name:Ljava/lang/String;

    return-object v0
.end method
