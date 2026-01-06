.class final enum Lcom/android/internal/telephony/PhoneFactory$InvisibleType;
.super Ljava/lang/Enum;
.source "PhoneFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InvisibleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneFactory$InvisibleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

.field public static final enum blacklist HIDE_ALL:Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

.field public static final enum blacklist HIDE_ONLY_VALUE:Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

.field public static final enum blacklist NOT_HIDE:Lcom/android/internal/telephony/PhoneFactory$InvisibleType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/PhoneFactory$InvisibleType;
    .locals 3

    .line 568
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;->NOT_HIDE:Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;->HIDE_ONLY_VALUE:Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;->HIDE_ALL:Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 569
    new-instance v0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    const-string v1, "NOT_HIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;->NOT_HIDE:Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    .line 570
    new-instance v0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    const-string v1, "HIDE_ONLY_VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;->HIDE_ONLY_VALUE:Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    .line 571
    new-instance v0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    const-string v1, "HIDE_ALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;->HIDE_ALL:Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    .line 568
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;->$values()[Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;->$VALUES:[Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 568
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneFactory$InvisibleType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 568
    const-class v0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/PhoneFactory$InvisibleType;
    .locals 1

    .line 568
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory$InvisibleType;->$VALUES:[Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneFactory$InvisibleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneFactory$InvisibleType;

    return-object v0
.end method
