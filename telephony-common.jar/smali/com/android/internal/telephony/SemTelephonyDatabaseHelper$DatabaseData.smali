.class Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;
.super Ljava/lang/Object;
.source "SemTelephonyDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseData"
.end annotation


# instance fields
.field public blacklist mKey:Ljava/lang/String;

.field public blacklist mSlot:I

.field public blacklist mValue:[Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mSlot:I

    .line 130
    iput-object p2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mKey:Ljava/lang/String;

    if-nez p3, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    array-length p1, p3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mValue:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 137
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_1

    .line 138
    iget-object p2, p0, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper$DatabaseData;->mValue:[Ljava/lang/String;

    aget-object v0, p3, p1

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
