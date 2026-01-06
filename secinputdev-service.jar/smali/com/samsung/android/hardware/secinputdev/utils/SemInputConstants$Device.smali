.class public final enum Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
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
    name = "Device"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

.field public static final enum DEFAULT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

.field public static final enum EXTRA_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

.field public static final enum KEY:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

.field public static final enum KEYBOARD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

.field public static final enum NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

.field public static final enum SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

.field public static final enum TAAS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;


# instance fields
.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .locals 8

    .line 116
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->DEFAULT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->EXTRA_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->KEY:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->KEYBOARD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->TAAS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    sget-object v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 117
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    const-string v1, "CURRENT_TSP"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 118
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    const/4 v1, 0x1

    const-string v2, "TSP"

    const-string v4, "DEFAULT_TSP"

    invoke-direct {v0, v4, v1, v1, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->DEFAULT_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 119
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    const/4 v1, 0x2

    const-string v2, "TSP_SUB"

    const-string v4, "EXTRA_TSP"

    invoke-direct {v0, v4, v1, v1, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->EXTRA_TSP:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 120
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    const/4 v1, 0x3

    const/16 v2, 0xb

    const-string v4, "SPEN"

    invoke-direct {v0, v4, v1, v2, v4}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 121
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    const/4 v1, 0x4

    const/16 v2, 0x15

    const-string v4, "KEY"

    invoke-direct {v0, v4, v1, v2, v4}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->KEY:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 122
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    const/4 v1, 0x5

    const/16 v2, 0x1f

    const-string v4, "KEYBOARD"

    invoke-direct {v0, v4, v1, v2, v4}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->KEYBOARD:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 123
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    const/4 v1, 0x6

    const/16 v2, 0x29

    const-string v4, "TAAS"

    invoke-direct {v0, v4, v1, v2, v4}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->TAAS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 124
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    const/4 v1, 0x7

    const/16 v2, 0x64

    const-string v4, "NOT_SPECIFIED"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 116
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->$values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 166
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
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
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->value:I

    .line 131
    iput-object p4, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->name:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public static getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .locals 5
    .param p0, "value"    # I

    .line 139
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 140
    .local v3, "device":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    iget v4, v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->value:I

    if-ne v4, p0, :cond_0

    .line 141
    return-object v3

    .line 139
    .end local v3    # "device":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
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

    .line 116
    const-class v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .locals 1

    .line 116
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toInt()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->toInt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    return-void
.end method
