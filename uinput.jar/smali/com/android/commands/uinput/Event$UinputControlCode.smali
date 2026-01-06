.class public final enum Lcom/android/commands/uinput/Event$UinputControlCode;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UinputControlCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/commands/uinput/Event$UinputControlCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/commands/uinput/Event$UinputControlCode;

.field public static final enum UI_SET_ABSBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

.field public static final enum UI_SET_EVBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

.field public static final enum UI_SET_FFBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

.field public static final enum UI_SET_KEYBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

.field public static final enum UI_SET_LEDBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

.field public static final enum UI_SET_MSCBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

.field public static final enum UI_SET_PROPBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

.field public static final enum UI_SET_RELBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

.field public static final enum UI_SET_SNDBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

.field public static final enum UI_SET_SWBIT:Lcom/android/commands/uinput/Event$UinputControlCode;


# instance fields
.field private final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/android/commands/uinput/Event$UinputControlCode;
    .locals 10

    .line 54
    sget-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_EVBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    sget-object v1, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_KEYBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    sget-object v2, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_RELBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    sget-object v3, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_ABSBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    sget-object v4, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_MSCBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    sget-object v5, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_LEDBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    sget-object v6, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_SNDBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    sget-object v7, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_FFBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    sget-object v8, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_SWBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    sget-object v9, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_PROPBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    filled-new-array/range {v0 .. v9}, [Lcom/android/commands/uinput/Event$UinputControlCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const-string v3, "UI_SET_EVBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/uinput/Event$UinputControlCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_EVBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 56
    new-instance v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    const/4 v1, 0x1

    const/16 v2, 0x65

    const-string v3, "UI_SET_KEYBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/uinput/Event$UinputControlCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_KEYBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 57
    new-instance v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    const/4 v1, 0x2

    const/16 v2, 0x66

    const-string v3, "UI_SET_RELBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/uinput/Event$UinputControlCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_RELBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 58
    new-instance v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    const/4 v1, 0x3

    const/16 v2, 0x67

    const-string v3, "UI_SET_ABSBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/uinput/Event$UinputControlCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_ABSBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 59
    new-instance v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    const/4 v1, 0x4

    const/16 v2, 0x68

    const-string v3, "UI_SET_MSCBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/uinput/Event$UinputControlCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_MSCBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 60
    new-instance v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    const/4 v1, 0x5

    const/16 v2, 0x69

    const-string v3, "UI_SET_LEDBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/uinput/Event$UinputControlCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_LEDBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 61
    new-instance v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    const/4 v1, 0x6

    const/16 v2, 0x6a

    const-string v3, "UI_SET_SNDBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/uinput/Event$UinputControlCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_SNDBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 62
    new-instance v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    const/4 v1, 0x7

    const/16 v2, 0x6b

    const-string v3, "UI_SET_FFBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/uinput/Event$UinputControlCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_FFBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 63
    new-instance v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const-string v3, "UI_SET_SWBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/uinput/Event$UinputControlCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_SWBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 64
    new-instance v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    const/16 v1, 0x9

    const/16 v2, 0x6e

    const-string v3, "UI_SET_PROPBIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/commands/uinput/Event$UinputControlCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_PROPBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 54
    invoke-static {}, Lcom/android/commands/uinput/Event$UinputControlCode;->$values()[Lcom/android/commands/uinput/Event$UinputControlCode;

    move-result-object v0

    sput-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->$VALUES:[Lcom/android/commands/uinput/Event$UinputControlCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/android/commands/uinput/Event$UinputControlCode;->mValue:I

    .line 70
    return-void
.end method

.method public static forEventType(I)Lcom/android/commands/uinput/Event$UinputControlCode;
    .locals 1
    .param p0, "eventType"    # I

    .line 81
    sparse-switch p0, :sswitch_data_0

    .line 90
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :sswitch_0
    sget-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_FFBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    goto :goto_0

    .line 88
    :sswitch_1
    sget-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_SNDBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    goto :goto_0

    .line 87
    :sswitch_2
    sget-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_LEDBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    goto :goto_0

    .line 86
    :sswitch_3
    sget-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_SWBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    goto :goto_0

    .line 85
    :sswitch_4
    sget-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_MSCBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    goto :goto_0

    .line 84
    :sswitch_5
    sget-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_ABSBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    goto :goto_0

    .line 83
    :sswitch_6
    sget-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_RELBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    goto :goto_0

    .line 82
    :sswitch_7
    sget-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_KEYBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 81
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/commands/uinput/Event$UinputControlCode;
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

    .line 54
    const-class v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/commands/uinput/Event$UinputControlCode;

    return-object v0
.end method

.method public static values()[Lcom/android/commands/uinput/Event$UinputControlCode;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/commands/uinput/Event$UinputControlCode;->$VALUES:[Lcom/android/commands/uinput/Event$UinputControlCode;

    invoke-virtual {v0}, [Lcom/android/commands/uinput/Event$UinputControlCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/commands/uinput/Event$UinputControlCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/android/commands/uinput/Event$UinputControlCode;->mValue:I

    return v0
.end method
