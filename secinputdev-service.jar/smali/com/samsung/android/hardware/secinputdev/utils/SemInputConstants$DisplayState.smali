.class public final enum Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
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
    name = "DisplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DOZE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum DOZE_SUSPEND:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum FORCE_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum FORCE_ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

.field public static final enum SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;


# instance fields
.field private isExternal:Z

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    .locals 8

    .line 179
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v4, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->DOZE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v5, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->DOZE_SUSPEND:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v6, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    sget-object v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 180
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const/4 v1, -0x1

    const-string v2, "SHUTDOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->SHUTDOWN:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    .line 181
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const-string v1, "NONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    .line 182
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    .line 183
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const-string v1, "ON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    .line 184
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const-string v1, "DOZE"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->DOZE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    .line 185
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const-string v1, "DOZE_SUSPEND"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->DOZE_SUSPEND:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    .line 186
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const/4 v1, 0x6

    const/16 v3, 0x15

    const-string v4, "FORCE_OFF"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_OFF:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    .line 187
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    const/4 v1, 0x7

    const/16 v3, 0x16

    const-string v4, "FORCE_ON"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->FORCE_ON:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    .line 179
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->$values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    .line 229
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "isExternal"    # Z
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
            "(IZ)V"
        }
    .end annotation

    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 193
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->value:I

    .line 194
    iput-boolean p4, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->isExternal:Z

    .line 195
    return-void
.end method

.method public static getFromInt(I)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    .locals 5
    .param p0, "value"    # I

    .line 206
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 207
    .local v3, "state":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    iget v4, v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->value:I

    if-ne v4, p0, :cond_0

    .line 208
    return-object v3

    .line 206
    .end local v3    # "state":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_1
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->NONE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
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

    .line 179
    const-class v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    .locals 1

    .line 179
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->$VALUES:[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    invoke-virtual {v0}, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->isExternal:Z

    return v0
.end method

.method public toInt()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->value:I

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

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->toInt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    return-void
.end method
