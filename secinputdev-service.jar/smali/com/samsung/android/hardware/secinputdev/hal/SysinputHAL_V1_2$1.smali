.class synthetic Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$1;
.super Ljava/lang/Object;
.source "SysinputHAL_V1_2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Property:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 266
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->values()[Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Property:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Property:[I

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FEATURE:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Property:[I

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CMD_LIST:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Property:[I

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->SCRUB_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Property:[I

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FOD_INFO:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Property:[I

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->FOD_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Property:[I

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->AOD_ACTIVE_AREA:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$1;->$SwitchMap$com$samsung$android$hardware$secinputdev$utils$SemInputConstants$Property:[I

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->EPEN_POS:Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    return-void
.end method
