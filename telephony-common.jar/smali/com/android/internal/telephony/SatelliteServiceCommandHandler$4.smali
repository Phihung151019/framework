.class synthetic Lcom/android/internal/telephony/SatelliteServiceCommandHandler$4;
.super Ljava/lang/Object;
.source "SatelliteServiceCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SatelliteServiceCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$CommandException$Error:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 509
    invoke-static {}, Lcom/android/internal/telephony/CommandException$Error;->values()[Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$4;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NETWORK_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$4;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ABORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
