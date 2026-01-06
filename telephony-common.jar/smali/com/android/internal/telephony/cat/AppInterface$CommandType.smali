.class public final enum Lcom/android/internal/telephony/cat/AppInterface$CommandType;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/AppInterface$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist ACTIVATE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum blacklist RUN_AT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum greylist TIMER_MANAGEMENT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 34

    .line 99
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v4, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v5, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v7, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v8, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v10, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v11, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v12, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v13, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v14, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v15, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v16, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v17, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v18, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v19, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v20, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v21, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v22, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v23, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v24, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v25, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v26, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v27, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v28, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v29, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v30, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v31, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v32, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v33, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ACTIVATE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    filled-new-array/range {v1 .. v33}, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 14

    .line 102
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v1, 0x0

    const/16 v2, 0x21

    const-string v3, "DISPLAY_TEXT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x22

    const-string v2, "GET_INKEY"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x23

    const-string v2, "GET_INPUT"

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4, v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "LAUNCH_BROWSER"

    const/4 v2, 0x3

    const/16 v5, 0x15

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "PLAY_TONE"

    const/4 v6, 0x4

    const/16 v7, 0x20

    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "REFRESH"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v1, 0x6

    const/16 v3, 0x24

    const-string v9, "SELECT_ITEM"

    invoke-direct {v0, v9, v1, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SEND_SS"

    const/4 v3, 0x7

    const/16 v9, 0x11

    invoke-direct {v0, v1, v3, v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SEND_USSD"

    const/16 v3, 0x8

    const/16 v10, 0x12

    invoke-direct {v0, v1, v3, v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SEND_SMS"

    const/16 v3, 0x9

    const/16 v11, 0x13

    invoke-direct {v0, v1, v3, v11}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 122
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "RUN_AT"

    const/16 v3, 0xa

    const/16 v12, 0x34

    invoke-direct {v0, v1, v3, v12}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SEND_DTMF"

    const/16 v3, 0xb

    const/16 v13, 0x14

    invoke-direct {v0, v1, v3, v13}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SET_UP_EVENT_LIST"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0xd

    const/16 v3, 0x28

    const-string v8, "SET_UP_IDLE_MODE_TEXT"

    invoke-direct {v0, v8, v1, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 129
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0xe

    const/16 v3, 0x25

    const-string v8, "SET_UP_MENU"

    invoke-direct {v0, v8, v1, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "SET_UP_CALL"

    const/16 v3, 0xf

    const/16 v8, 0x10

    invoke-direct {v0, v1, v3, v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 133
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "PROVIDE_LOCAL_INFORMATION"

    const/16 v3, 0x26

    invoke-direct {v0, v1, v8, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "MORE_TIME"

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 138
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "POLL_INTERVAL"

    invoke-direct {v0, v1, v10, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 140
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "POLLING_OFF"

    invoke-direct {v0, v1, v11, v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "TIMER_MANAGEMENT"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v13, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "PERFORM_CARD_APDU"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x16

    const/16 v2, 0x31

    const-string v3, "POWER_ON_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x17

    const/16 v2, 0x32

    const-string v3, "POWER_OFF_CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 150
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x18

    const/16 v2, 0x33

    const-string v3, "GET_READER_STATUS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 152
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "RUN_AT_COMMAND"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v12}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x1a

    const/16 v2, 0x35

    const-string v3, "LANGUAGE_NOTIFICATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 157
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x1b

    const/16 v2, 0x40

    const-string v3, "OPEN_CHANNEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 159
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x1c

    const/16 v2, 0x41

    const-string v3, "CLOSE_CHANNEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 161
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x1d

    const/16 v2, 0x42

    const-string v3, "RECEIVE_DATA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 163
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x1e

    const/16 v2, 0x43

    const-string v3, "SEND_DATA"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 165
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v1, 0x1f

    const/16 v2, 0x44

    const-string v3, "GET_CHANNEL_STATUS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 168
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v1, "ACTIVATE"

    const/16 v2, 0x70

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ACTIVATE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 99
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
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

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    iput p3, p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    return-void
.end method

.method public static greylist-max-r fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 5

    .line 192
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 193
    iget v4, v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 99
    const-class v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-object p0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-object v0
.end method


# virtual methods
.method public blacklist value()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    return p0
.end method
