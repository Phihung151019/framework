.class public final enum Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
.super Ljava/lang/Enum;
.source "SemInputConstants.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MotionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

.field public static final enum AIVF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

.field public static final enum APD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

.field public static final enum AWD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

.field public static final enum CALLBACK:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EAR_DETECTION:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

.field public static final enum GRIP_FILTER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

.field public static final enum NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

.field public static final enum PALM_MUTE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

.field public static final enum PALM_SWIPE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

.field public static final enum STREAM:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;


# instance fields
.field private feature:I

.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .locals 10

    .line 324
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->PALM_MUTE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->PALM_SWIPE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->EAR_DETECTION:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    sget-object v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->GRIP_FILTER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    sget-object v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->AIVF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->AWD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    sget-object v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->STREAM:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    sget-object v8, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->CALLBACK:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    sget-object v9, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->APD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 325
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    const-string v4, "NONE"

    const/4 v5, 0x0

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 326
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    const-string v5, "PALM"

    const/high16 v6, 0x100000

    const-string v2, "PALM_MUTE"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->PALM_MUTE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 327
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    const-string v6, "PALM_SWIPE"

    const/high16 v7, 0x400000

    const-string v3, "PALM_SWIPE"

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->PALM_SWIPE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 328
    new-instance v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    const-string v7, "EAR_DETECTION"

    const/4 v8, 0x0

    const-string v4, "EAR_DETECTION"

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->EAR_DETECTION:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 329
    new-instance v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    const-string v8, "GRIP_FILTER"

    const/4 v9, 0x0

    const-string v5, "GRIP_FILTER"

    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->GRIP_FILTER:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 330
    new-instance v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    const-string v9, "AIVF"

    const/high16 v10, 0x200000

    const-string v6, "AIVF"

    const/4 v7, 0x5

    const/4 v8, 0x5

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->AIVF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 331
    new-instance v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    const-string v10, "AWD"

    const/high16 v11, 0x800000

    const-string v7, "AWD"

    const/4 v8, 0x6

    const/4 v9, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->AWD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 332
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    const-string v4, "STREAM"

    const/4 v5, -0x1

    const-string v1, "STREAM"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->STREAM:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 333
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    const-string v5, "CALLBACK"

    const/4 v6, -0x1

    const-string v2, "CALLBACK"

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->CALLBACK:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 334
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    const-string v6, "POCKET_DETECT"

    const/high16 v7, 0x80000

    const-string v3, "APD"

    const/16 v4, 0x9

    const/16 v5, 0x9

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->APD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 324
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->$values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    .line 389
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "feature"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 340
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 341
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->value:I

    .line 342
    iput-object p4, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->name:Ljava/lang/String;

    .line 343
    iput p5, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->feature:I

    .line 344
    return-void
.end method

.method public static getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .locals 5
    .param p0, "value"    # I

    .line 355
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 356
    .local v3, "type":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    iget v4, v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->value:I

    if-ne v4, p0, :cond_0

    .line 357
    return-object v3

    .line 355
    .end local v3    # "type":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    :cond_1
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    return-object v0
.end method

.method public static getFromName(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 364
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 365
    .local v3, "type":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    iget-object v4, v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    return-object v3

    .line 364
    .end local v3    # "type":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    :cond_1
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 324
    const-class v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;
    .locals 1

    .line 324
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isFeatureEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 373
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->feature:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x1

    return v0

    .line 376
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toInt()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$MotionType;->toInt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    return-void
.end method
