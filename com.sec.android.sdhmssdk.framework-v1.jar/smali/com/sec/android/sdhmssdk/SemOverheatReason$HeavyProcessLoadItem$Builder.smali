.class public final Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;
.super Ljava/lang/Object;
.source "SemOverheatReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Builder"
.end annotation


# instance fields
.field private processName:Ljava/lang/String;

.field private uid:I

.field private usage:D


# direct methods
.method static bridge synthetic -$$Nest$fgetprocessName(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->processName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuid(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->uid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetusage(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->usage:D

    return-wide v0
.end method

.method protected constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;
    .locals 1

    .line 279
    new-instance v0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;

    invoke-direct {v0, p0}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;-><init>(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;)V

    return-object v0
.end method

.method processName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 269
    iput-object p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->processName:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 264
    iput p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->uid:I

    .line 265
    return-object p0
.end method

.method usage(D)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;
    .locals 0
    .param p1, "value"    # D

    .line 274
    iput-wide p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->usage:D

    .line 275
    return-object p0
.end method
