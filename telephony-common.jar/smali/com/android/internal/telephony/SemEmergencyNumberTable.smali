.class public final Lcom/android/internal/telephony/SemEmergencyNumberTable;
.super Ljava/lang/Object;
.source "SemEmergencyNumberTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;
    }
.end annotation


# static fields
.field private static blacklist mEmergencyNumberTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    .line 109
    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, ""

    const-string v3, "112,911"

    const-string v4, "112,911,999,000,08,110,118,119"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "206"

    const-string v6, "112,911,100"

    const-string v7, "112,911,999,000,08,110,118,119,100"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "234"

    const-string v8, "112,911,999,9999,1122,141999,141112"

    const-string v9, "112,911,999,000,08,110,118,119,9999,1122,141999,141112"

    invoke-direct {v1, v5, v8, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "235"

    invoke-direct {v1, v5, v8, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "242"

    const-string v8, "112,911,999,000,08,118,119,110"

    invoke-direct {v1, v5, v3, v8}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "272"

    const-string v8, "112,911,999"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "112,911,199"

    const-string v9, "112,911,999,000,08,110,118,119,199"

    const-string v10, "280"

    invoke-direct {v1, v10, v5, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "286"

    const-string v9, "112,122,131,132,136,140,151,155,156,157,158,159,161,168,177,911,999,000,08,110,118,119"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310026"

    const-string v9, "112,911,999,000,110,118,119"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310160"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310200"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310210"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310220"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310230"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310240"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310250"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310260"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310270"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310290"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310310"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310330"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310490"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310660"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "310800"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "313340"

    invoke-direct {v1, v5, v3, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "330110"

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "334050"

    const-string v9, "911"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "33450"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "33405"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "334090"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "33490"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "33409"

    invoke-direct {v1, v5, v9, v9}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "350007"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "112,911,919"

    const-string v10, "112,911,999,000,08,110,118,119,919"

    const-string v11, "36449"

    invoke-direct {v1, v11, v5, v10}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "370"

    invoke-direct {v1, v5, v9, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "422"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "424"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "425"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "42505"

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "42506"

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "425299"

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "425999"

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "426"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "427"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "430"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "431"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "440"

    const-string v6, "112,911,110/1,118/8,119/6"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "441"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "450"

    const-string v6, "112/1,911/4,119/4,118/19,122/8,113/3,125/9,111/7,117/18"

    invoke-direct {v1, v5, v6, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "452"

    invoke-direct {v1, v5, v2, v2}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "454"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "455"

    const-string v6, "112,911,999,000,08,110,118,119,120,122"

    invoke-direct {v1, v5, v6, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "460"

    invoke-direct {v1, v5, v6, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "46011"

    const-string v7, "112,911/1,999/16,000,08,110/1,118,119/4,120/2,122/8"

    invoke-direct {v1, v5, v7, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "466"

    const-string v6, "112,911,110,119"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "46605"

    const-string v6, "112/4,911,110/1,119/2"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "112/2,911,110/1,119/4"

    const-string v6, "112/2,911,999,000,08,110/1,118,119/4"

    const-string v7, "46601"

    invoke-direct {v1, v7, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "502"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "505"

    const-string v6, "112,911,000"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "515"

    invoke-direct {v1, v5, v9, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "112,911,000,111"

    const-string v6, "112,911,999,000,08,110,118,119,111"

    const-string v7, "530"

    invoke-direct {v1, v7, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "52505"

    const-string v6, "112,911,999/1"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "520"

    const-string v6, "112"

    invoke-direct {v1, v5, v6, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "110,111,112,911"

    const-string v6, "112,911,08,000,110,118,119,999,111"

    const-string v7, "537"

    invoke-direct {v1, v7, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "112,911,917"

    const-string v6, "112,911,08,000,110,118,119,999,917"

    const-string v7, "542"

    invoke-direct {v1, v7, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "548"

    const-string v6, "112,911,08,000,110,118,119,999"

    invoke-direct {v1, v5, v8, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "112,911,122/1,123/2,180/4"

    const-string v6, "112,911,999,000,08,110,118,119,122/1,123/2,180/4"

    const-string v7, "602"

    invoke-direct {v1, v7, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "606"

    const-string v6, "112,911,08"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "620"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "634"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "639"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "659"

    invoke-direct {v1, v5, v8, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "70403"

    const-string v6, "112,911,122"

    const-string v7, "112,911,999,000,08,110,118,119,122"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "70604"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "71606"

    const-string v6, "112,911,105"

    const-string v7, "112,911,999,000,08,110,118,119,105"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "71610"

    const-string v8, "112/1,911/1,105/1"

    invoke-direct {v1, v5, v8, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "71615"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "71617"

    invoke-direct {v1, v5, v3, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "72207"

    const-string v6, "911,100/4,101/1,102/8,103/16,107/2"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "112,911,190"

    const-string v6, "112,911,999,000,08,110,118,119,190"

    const-string v7, "724"

    invoke-direct {v1, v7, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "730"

    const-string v6, "112,911,133"

    const-string v7, "112,911,999,000,08,110,118,119,133"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "112/1,131/2,132/4,133/1,136/16,137/8,911/1"

    const-string v6, "112/1,131/2,132/4,133/1,136/16,137/8,911/1"

    const-string v8, "73001"

    invoke-direct {v1, v8, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "73002"

    const-string v6, "112/1,911/1,133/1"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "112,123,911"

    const-string v6, "112,123,911"

    const-string v7, "732000"

    invoke-direct {v1, v7, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "732101"

    const-string v6, "112/1,911"

    invoke-direct {v1, v5, v6, v3}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "732103"

    const-string v6, "112/1,123/2"

    const-string v7, "112,123"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "732111"

    const-string v6, "112/1,123/2"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "732123"

    invoke-direct {v1, v5, v7, v3}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "73212"

    invoke-direct {v1, v5, v7, v3}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "732130"

    invoke-direct {v1, v5, v7, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "123"

    const-string v6, "123"

    const-string v7, "732187"

    invoke-direct {v1, v7, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "73401"

    const-string v6, "112,911,171"

    const-string v7, "112,911,999,000,08,110,118,119,171"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "73402"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "73403"

    invoke-direct {v1, v5, v6, v7}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "73404"

    const-string v6, "112,911,999,000,08,110,118,119,*1,*171,171"

    invoke-direct {v1, v5, v3, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "112,911,*1,*171,171"

    const-string v6, "112,911,999,000,08,110,118,119,*1,*171,171"

    const-string v7, "73406"

    invoke-direct {v1, v7, v5, v6}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "736"

    const-string v6, "112,911,110"

    invoke-direct {v1, v5, v6, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v5, "74001"

    invoke-direct {v1, v5, v3, v2}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "112,911,109"

    const-string v5, "112,911,999,000,08,110,118,119,109"

    const-string v6, "748"

    invoke-direct {v1, v6, v2, v5}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "74402"

    invoke-direct {v1, v2, v9, v4}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const-string v2, "74405"

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist emergencyNumbersForPlmn(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/android/internal/telephony/SemEmergencyNumberTable;->entryForPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    move-result-object p0

    if-nez p0, :cond_0

    .line 89
    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithSim:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;->mEccNumberWithoutSim:Ljava/lang/String;

    return-object p0
.end method

.method private static blacklist entryForPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;
    .locals 5

    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 68
    new-instance v0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v3, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 73
    new-instance v0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2, v2}, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object p0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 83
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/SemEmergencyNumberTable;->mEmergencyNumberTable:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/SemEmergencyNumberTable$EccEntry;

    return-object p0
.end method
