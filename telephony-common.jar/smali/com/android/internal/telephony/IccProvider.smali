.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final greylist ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final blacklist ADN:I = 0x1

.field protected static final blacklist ADN_ALL:I = 0x7

.field private static final blacklist ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final blacklist ADN_EMAILS:I = 0x10

.field protected static final blacklist ADN_EMAILS_SUB:I = 0x11

.field protected static final blacklist ADN_EXPANSION:I = 0x14

.field protected static final blacklist ADN_EXPANSION_SUB:I = 0x15

.field protected static final blacklist ADN_FROM_CONTACTS:I = 0xa

.field protected static final blacklist ADN_FROM_CONTACTS_SUB:I = 0xb

.field protected static final blacklist ADN_INIT:I = 0x16

.field protected static final blacklist ADN_INIT_SUB:I = 0x17

.field private static final blacklist ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final blacklist ADN_SUB:I = 0x2

.field private static final greylist-max-r DBG:Z = true

.field private static final blacklist EMAIL_COLUMN_NAMES:[Ljava/lang/String;

.field protected static final blacklist FDN:I = 0x3

.field protected static final blacklist FDN_FROM_CONTACTS:I = 0xc

.field protected static final blacklist FDN_FROM_CONTACTS_SUB:I = 0xd

.field protected static final blacklist FDN_SUB:I = 0x4

.field protected static final blacklist ICC_CAPA_INFO:I = 0x12

.field protected static final blacklist ICC_CAPA_INFO_SUB:I = 0x13

.field protected static final blacklist MSISDN:I = 0x8

.field protected static final blacklist MSISDN_FROM_CONTACTS:I = 0xe

.field protected static final blacklist MSISDN_FROM_CONTACTS_SUB:I = 0xf

.field protected static final blacklist MSISDN_SUB:I = 0x9

.field protected static final blacklist SDN:I = 0x5

.field protected static final blacklist SDN_SUB:I = 0x6

.field public static final blacklist STR_ANRA_NUMBER:Ljava/lang/String; = "AnrANumber"

.field public static final blacklist STR_ANRB_NUMBER:Ljava/lang/String; = "AnrBNumber"

.field public static final blacklist STR_ANRC_NUMBER:Ljava/lang/String; = "AnrCNumber"

.field public static final blacklist STR_ANRS:Ljava/lang/String; = "anrs"

.field public static final blacklist STR_ANR_NUMBER:Ljava/lang/String; = "AnrNumber"

.field public static final blacklist STR_EMAILS:Ljava/lang/String; = "emails"

.field public static final blacklist STR_INDEX:Ljava/lang/String; = "adn_index"

.field public static final blacklist STR_NEW_ANRA_NUMBER:Ljava/lang/String; = "newAnrANumber"

.field public static final blacklist STR_NEW_ANRB_NUMBER:Ljava/lang/String; = "newAnrBNumber"

.field public static final blacklist STR_NEW_ANRC_NUMBER:Ljava/lang/String; = "newAnrCNumber"

.field public static final blacklist STR_NEW_ANRS:Ljava/lang/String; = "newAnrs"

.field public static final blacklist STR_NEW_ANR_NUMBER:Ljava/lang/String; = "newAnrNumber"

.field public static final blacklist STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final blacklist STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final blacklist STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final blacklist STR_NUMBER:Ljava/lang/String; = "number"

.field public static final blacklist STR_PIN2:Ljava/lang/String; = "pin2"

.field public static final blacklist STR_TAG:Ljava/lang/String; = "tag"

.field private static final blacklist URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 61
    const-string v8, "anrC_number"

    const-string v9, "adn_index"

    const-string v0, "name"

    const-string v1, "number"

    const-string v2, "emails"

    const-string v3, "anrs"

    const-string v4, "_id"

    const-string v5, "anr_number"

    const-string v6, "anrA_number"

    const-string v7, "anrB_number"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 77
    const-string v0, "adn_index"

    const-string v1, "_id"

    const-string v2, "emails"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    .line 83
    const-string v8, "email_UsedCount"

    const-string v9, "email_MaxLength"

    const-string v1, "name_MaxCount"

    const-string v2, "name_UsedCount"

    const-string v3, "name_MaxLength"

    const-string v4, "number_MaxCount"

    const-string v5, "number_UsedCount"

    const-string v6, "number_MaxLength"

    const-string v7, "email_MaxCount"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 96
    const-string v0, "name_MaxLength"

    const-string v1, "number_MaxLength"

    const-string v2, "maxCount"

    const-string v3, "usedCount"

    const-string v4, "firstIndex"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 161
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 165
    const-string v1, "adn"

    const/4 v2, 0x1

    const-string v3, "icc"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    const-string v1, "adn/subId/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    const-string v1, "fdn"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    const-string v1, "fdn/subId/#"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    const-string v1, "sdn"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    const-string v1, "sdn/subId/#"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    const-string v1, "msisdn"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    const-string v1, "msisdn/subId/#"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    const-string v1, "adn/from_contacts"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    const-string v1, "adn/from_contacts/subId/#"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    const-string v1, "fdn/from_contacts"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    const-string v1, "fdn/from_contacts/subId/#"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    const-string v1, "msisdn/from_contacts"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    const-string v1, "msisdn/from_contacts/subId/#"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    const-string v1, "adn/emails"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    const-string v1, "adn/emails/subId/#"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    const-string v1, "capacity"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    const-string v1, "capacity/subId/#"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    const-string v1, "adn/expansion"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    const-string v1, "adn/expansion/subId/#"

    const/16 v2, 0x15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    const-string v1, "adn/init"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    const-string v1, "adn/init/subId/#"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private blacklist getAdnLikesInfo(I)Landroid/database/MatrixCursor;
    .locals 2

    const/4 p0, 0x5

    .line 1132
    new-array p0, p0, [I

    .line 1136
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1134
    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz p0, :cond_1

    .line 1147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 1148
    aget v0, p0, v0

    .line 1149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 1150
    aget v1, p0, v0

    .line 1151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 1152
    aget v1, p0, v1

    .line 1153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 1154
    aget v1, p0, v1

    .line 1155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 1156
    aget p0, p0, v1

    .line 1157
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1160
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    return-object p0

    .line 1163
    :cond_1
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist getAdnLikesInfoForSubscriber(II)Landroid/database/MatrixCursor;
    .locals 1

    const/4 p0, 0x5

    .line 1168
    new-array p0, p0, [I

    .line 1172
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1170
    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1177
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfoForSubscriber(II)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz p0, :cond_1

    .line 1183
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 1184
    aget p2, p0, p2

    .line 1185
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 1186
    aget v0, p0, p2

    .line 1187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    .line 1188
    aget v0, p0, v0

    .line 1189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    .line 1190
    aget v0, p0, v0

    .line 1191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    .line 1192
    aget p0, p0, v0

    .line 1193
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1196
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    return-object p0

    .line 1199
    :cond_1
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist getRequestSubId(Landroid/net/Uri;)I
    .locals 2

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRequestSubId url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1349
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1351
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getUSIMPBCapa()Landroid/database/MatrixCursor;
    .locals 6

    .line 1026
    const-string v0, "getUSIMPBCapa"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1027
    new-instance v0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .line 1031
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v1

    .line 1032
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager;->getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v1

    .line 1033
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    .line 1029
    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1036
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1041
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :catch_1
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1045
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 1046
    invoke-virtual {v0, v1, v1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    .line 1047
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    .line 1048
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .line 1049
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 1050
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .line 1051
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .line 1054
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .line 1056
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    invoke-virtual {v0, v3, v3}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .line 1058
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    .line 1060
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    .line 1061
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    .line 1063
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    invoke-virtual {v0, v4, v3}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    .line 1065
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1068
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    return-object v0

    .line 1071
    :cond_1
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist getUsimPBCapaInfoForSubscriber(I)Landroid/database/MatrixCursor;
    .locals 5

    .line 1076
    const-string v0, "getUSIMPBCapa"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1077
    new-instance v0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;-><init>()V

    .line 1081
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v1

    .line 1082
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager;->getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v1

    .line 1083
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    .line 1079
    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1086
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfoForSubscriber(I)Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1091
    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :catch_1
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1095
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x1

    .line 1096
    invoke-virtual {v0, p1, p1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v1

    .line 1097
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 1098
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    .line 1099
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 1100
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .line 1101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .line 1104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .line 1106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    invoke-virtual {v0, v2, v2}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .line 1108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    .line 1110
    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .line 1111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v1

    .line 1113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v0

    .line 1115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1118
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    return-object v0

    .line 1121
    :cond_1
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist loadAllSimContacts(I)Landroid/database/Cursor;
    .locals 8

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 360
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 366
    new-array v3, v2, [Landroid/database/Cursor;

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_2

    .line 370
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 372
    invoke-direct {p0, p1, v1, v5}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object v6

    aput-object v6, v3, v4

    .line 374
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ADN Records loaded for Subscription ::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IccProvider"

    invoke-static {v6, v5}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 363
    :cond_1
    :goto_1
    new-array v3, v1, [Landroid/database/Cursor;

    .line 378
    :cond_2
    new-instance p0, Landroid/database/MergeCursor;

    invoke-direct {p0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object p0
.end method

.method private blacklist loadEmailRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 4

    .line 1365
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1367
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object p0

    .line 1368
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result p1

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    .line 1372
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 1373
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1377
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1378
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist loadFromEf(IZI)Landroid/database/MatrixCursor;
    .locals 3

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromEf: efType=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 954
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v1

    .line 955
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager;->getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v1

    .line 956
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    .line 952
    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 958
    invoke-interface {v1, p3, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInPBForSubscriber(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 963
    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :catch_1
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 968
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 970
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adnRecords.size="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 972
    new-instance p2, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p2, v1, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    :goto_1
    if-ge p3, p1, :cond_2

    .line 974
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 977
    :cond_1
    new-instance p2, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p2, v1, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    :goto_2
    if-ge p3, p1, :cond_2

    .line 979
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/IccProvider;->loadEmailRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-object p2

    .line 985
    :cond_3
    const-string p0, "IccProvider"

    const-string p1, "Cannot load ADN records"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist loadFromEfInit(II)Landroid/database/MatrixCursor;
    .locals 3

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromEfInit: efType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 998
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v1

    .line 999
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager;->getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v1

    .line 1000
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    .line 996
    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1002
    invoke-interface {v1, p2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEfInitForSubscriber(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v0, :cond_2

    .line 1011
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 1012
    new-instance p2, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p2, v1, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adnRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1015
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v2, p2, v1}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 1020
    :cond_2
    const-string p0, "IccProvider"

    const-string p1, "Cannot load ADN records"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method private greylist-max-r loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 10

    .line 1288
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0xa

    .line 1291
    new-array v0, v0, [Ljava/lang/Object;

    .line 1293
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 1294
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "IccProvider"

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1297
    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 1298
    aput-object v2, v0, v1

    .line 1300
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1303
    array-length v5, v1

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v1, v6

    .line 1304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding email:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v7}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1311
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1314
    array-length v5, v1

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v1, v3

    .line 1316
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding anr:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v6}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x3

    .line 1322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    .line 1325
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p3, 0x4

    aput-object p0, v0, p3

    .line 1327
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_4

    move-object p0, p3

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object p0

    :goto_2
    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 1328
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    move-object p0, p3

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object p0

    :goto_3
    const/4 v1, 0x6

    aput-object p0, v0, v1

    .line 1329
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    move-object p0, p3

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object p0

    :goto_4
    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 1330
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object p3

    :goto_5
    const/16 p0, 0x8

    aput-object p3, v0, p0

    .line 1332
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result p0

    .line 1333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x9

    .line 1334
    aput-object p0, v0, p1

    .line 1336
    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method private greylist-max-r log(Ljava/lang/String;)V
    .locals 1

    .line 1342
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[IccProvider] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IccProvider"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 591
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 594
    const-string v0, "len of input String is 0"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    .line 599
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x27

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    sub-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_1

    .line 600
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private blacklist updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;I)Z
    .locals 2

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccRecordInEf: efType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", values: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  ], subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1212
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v1

    .line 1213
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager;->getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v1

    .line 1214
    invoke-virtual {v1}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v1

    .line 1210
    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1217
    invoke-interface {v1, p4, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriber(IILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1223
    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1225
    :catch_1
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateIccRecordInEf: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    return v0
.end method

.method private blacklist updateIccRecordInEfByIndexAndGetIndex(ILandroid/content/ContentValues;Ljava/lang/String;II)I
    .locals 7

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccRecordInEfByIndexAndGetIndex: efType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", values: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  ], subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1237
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1238
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1239
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1235
    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v2, p4

    move v6, p5

    .line 1242
    :try_start_1
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForSubscriberByIndexAndGetIndex(IILandroid/content/ContentValues;Ljava/lang/String;I)I

    move-result p5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_0
    move v6, p5

    goto :goto_3

    :catch_1
    move-exception v0

    move v6, p5

    goto :goto_0

    :catch_2
    move v6, p5

    goto :goto_2

    .line 1248
    :goto_1
    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    :catch_3
    :goto_2
    move p5, v6

    .line 1250
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateIccRecordInEfByIndexAndGetIndex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    return p5
.end method


# virtual methods
.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 615
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, v6}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x6f3a

    const/4 v7, 0x1

    if-eq v1, v7, :cond_3

    if-eq v1, v3, :cond_2

    const/16 v5, 0x6f3b

    if-eq v1, v2, :cond_1

    const/4 v9, 0x4

    if-eq v1, v9, :cond_0

    const/16 v9, 0x6f40

    packed-switch v1, :pswitch_data_0

    .line 685
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v1

    :goto_0
    move v4, v1

    move v5, v7

    move v1, v9

    goto :goto_7

    .line 674
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    goto :goto_0

    .line 668
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v1

    :goto_1
    move v4, v1

    move v1, v5

    move v5, v7

    goto :goto_7

    .line 662
    :pswitch_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    goto :goto_1

    .line 656
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v1

    :goto_2
    move v5, v4

    goto :goto_1

    .line 650
    :pswitch_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    goto :goto_2

    .line 645
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v1

    :goto_3
    move v4, v1

    move v1, v9

    :goto_4
    const/4 v5, 0x0

    goto :goto_7

    .line 640
    :pswitch_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    goto :goto_3

    .line 634
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v1

    :goto_5
    move v4, v1

    move v1, v5

    goto :goto_4

    .line 629
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    goto :goto_5

    .line 624
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v1

    :goto_6
    move v5, v4

    goto :goto_5

    .line 619
    :cond_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    goto :goto_6

    .line 689
    :goto_7
    const-string v9, "delete"

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 698
    const-string v9, " AND "

    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 699
    array-length v10, v9

    move/from16 v17, v5

    move v5, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_8
    add-int/lit8 v10, v10, -0x1

    move/from16 p3, v7

    .line 701
    const-string v7, "anrs"

    const/16 v18, 0x0

    const-string v8, "emails"

    const-string v11, "number"

    const-string v2, "tag"

    if-ltz v10, :cond_e

    .line 702
    aget-object v3, v9, v10

    move/from16 v20, v4

    .line 703
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v5

    const-string v5, "parsing \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 705
    const-string v4, "="

    move-object/from16 v19, v9

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 707
    aget-object v22, v9, v18

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 708
    aget-object v22, v9, p3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 710
    array-length v9, v9

    move/from16 v23, v10

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    .line 711
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 713
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 714
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    :cond_4
    move-object/from16 v3, v22

    goto :goto_9

    .line 716
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolve: bad whereClause parameter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IccProvider"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, p3

    move v3, v10

    move-object/from16 v9, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v10, v23

    const/4 v2, 0x3

    goto/16 :goto_8

    .line 723
    :goto_9
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, ""

    const-string v9, "Change null"

    const-string v10, "null"

    if-eqz v2, :cond_8

    .line 724
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 727
    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object v12, v4

    :cond_6
    :goto_a
    move/from16 v5, v21

    goto :goto_b

    :cond_7
    move-object v12, v2

    goto :goto_a

    .line 731
    :cond_8
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 732
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 735
    invoke-direct {v0, v9}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    move-object v13, v4

    goto :goto_a

    :cond_9
    move-object v13, v2

    goto :goto_a

    .line 739
    :cond_a
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 740
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_a

    .line 741
    :cond_b
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 742
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_a

    .line 743
    :cond_c
    const-string v2, "pin2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 744
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_a

    .line 746
    :cond_d
    const-string v2, "adn_index"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 747
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    move v5, v2

    :goto_b
    move/from16 v7, p3

    move-object/from16 v9, v19

    move/from16 v4, v20

    move/from16 v10, v23

    const/4 v2, 0x3

    const/4 v3, 0x2

    goto/16 :goto_8

    :cond_e
    move/from16 v20, v4

    move/from16 v21, v5

    .line 752
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 753
    invoke-virtual {v3, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {v3, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v3, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {v3, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 757
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    return v18

    .line 760
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete mvalues= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    if-eqz v17, :cond_10

    move-object v2, v3

    move-object/from16 v3, v16

    move/from16 v4, v20

    move/from16 v5, v21

    .line 764
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndexAndGetIndex(ILandroid/content/ContentValues;Ljava/lang/String;II)I

    move-result v5

    move/from16 v7, p3

    goto :goto_c

    :cond_10
    move-object v2, v3

    move-object/from16 v3, v16

    move/from16 v4, v20

    move/from16 v5, v21

    .line 766
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;I)Z

    move-result v7

    :goto_c
    if-nez v7, :cond_11

    return v18

    .line 773
    :cond_11
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v5

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 383
    sget-object p0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 394
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 391
    :pswitch_0
    const-string p0, "vnd.android.cursor.dir/sim-contact"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    .line 409
    const-string v2, "insert"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 411
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, v6}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v2, 0x6f3a

    const/4 v11, 0x1

    const/4 v3, 0x0

    if-eq v7, v11, :cond_5

    if-eq v7, v10, :cond_4

    .line 412
    const-string v4, "pin2"

    const/16 v5, 0x6f3b

    if-eq v7, v9, :cond_3

    if-eq v7, v8, :cond_2

    const/16 v13, 0x14

    if-eq v7, v13, :cond_1

    const/16 v13, 0x15

    if-eq v7, v13, :cond_0

    const/16 v13, 0x6f40

    packed-switch v7, :pswitch_data_0

    .line 498
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    :goto_0
    move v4, v2

    move v5, v3

    move v2, v13

    const/4 v3, 0x0

    :goto_1
    move v13, v11

    goto/16 :goto_9

    .line 475
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    goto :goto_0

    .line 468
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    .line 469
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v13, v4

    move v4, v2

    move v2, v5

    move v5, v3

    move-object v3, v13

    goto :goto_1

    .line 461
    :pswitch_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 462
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 455
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v4

    :goto_3
    move v5, v3

    move v13, v11

    :goto_4
    const/4 v3, 0x0

    goto :goto_9

    .line 449
    :pswitch_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    goto :goto_3

    .line 443
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    :goto_5
    move v4, v2

    move v5, v3

    move v2, v13

    :goto_6
    move v13, v5

    goto :goto_4

    .line 438
    :pswitch_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    goto :goto_5

    .line 493
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v4

    goto :goto_3

    .line 487
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    goto :goto_3

    .line 431
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    .line 432
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_7
    move v13, v3

    move-object v3, v4

    move v4, v2

    move v2, v5

    move v5, v13

    goto :goto_9

    .line 425
    :cond_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 426
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 420
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v4

    :goto_8
    move v5, v3

    goto :goto_6

    .line 415
    :cond_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v4

    goto :goto_8

    .line 504
    :goto_9
    const-string v14, "tag"

    invoke-virtual {v1, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 505
    const-string v15, "number"

    invoke-virtual {v1, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v5

    .line 506
    const-string v5, "emails"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x0

    .line 507
    const-string v12, "anrs"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 509
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 510
    new-array v12, v8, [Ljava/lang/String;

    move/from16 v18, v9

    .line 511
    const-string v9, "AnrNumber"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v16

    .line 512
    const-string v9, "AnrANumber"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v11

    .line 513
    const-string v9, "AnrBNumber"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v10

    .line 514
    const-string v9, "AnrCNumber"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v18

    move/from16 v1, v16

    :goto_a
    if-ge v1, v8, :cond_7

    .line 516
    aget-object v9, v12, v1

    if-nez v9, :cond_6

    const-string v9, ""

    :cond_6
    aput-object v9, v12, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 518
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v12, v16

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v12, v11

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v12, v10

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v12, v18

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_b
    move v1, v2

    goto :goto_c

    :cond_8
    move/from16 v18, v9

    goto :goto_b

    .line 522
    :goto_c
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 523
    const-string v8, "newTag"

    invoke-virtual {v2, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v8, "newNumber"

    invoke-virtual {v2, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v8, "newEmails"

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v5, "newAnrs"

    invoke-virtual {v2, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_9

    const v5, 0xffff

    .line 530
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndexAndGetIndex(ILandroid/content/ContentValues;Ljava/lang/String;II)I

    move-result v3

    move v1, v11

    goto :goto_d

    .line 532
    :cond_9
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;I)Z

    move-result v1

    move/from16 v3, v16

    :goto_d
    if-nez v1, :cond_a

    return-object v17

    .line 540
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    const-string v2, "adn/"

    if-eq v7, v11, :cond_e

    if-eq v7, v10, :cond_d

    move/from16 v4, v18

    if-eq v7, v4, :cond_c

    const/4 v4, 0x4

    if-eq v7, v4, :cond_b

    packed-switch v7, :pswitch_data_1

    goto :goto_e

    .line 559
    :pswitch_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 567
    :pswitch_9
    const-string v2, "msisdn/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 563
    :pswitch_a
    const-string v2, "msisdn/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 555
    :cond_b
    const-string v2, "fdn/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 551
    :cond_c
    const-string v2, "fdn/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 547
    :cond_d
    const-string v2, "adn/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 543
    :cond_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :goto_e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 580
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist onCreate()Z
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccProvider;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 206
    const-string p2, "query"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 208
    sget-object p2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/16 p4, 0x16

    const/16 p5, 0x6f3a

    if-eq p2, p4, :cond_11

    const/16 p4, 0x17

    if-eq p2, p4, :cond_10

    const/16 p4, 0x6f49

    const/16 v0, 0x6f40

    const/16 v1, 0x6f3b

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v3, 0x2

    const-string v4, "EF_TYPE"

    const-string v5, "="

    const/4 v6, 0x1

    const-string v7, "Unknown URL "

    packed-switch p2, :pswitch_data_1

    .line 353
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :pswitch_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 311
    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 312
    aget-object p3, p2, v2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 313
    aget-object p2, p2, v6

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 315
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    .line 317
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 318
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-eq p2, p5, :cond_3

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    if-ne p2, p4, :cond_0

    .line 338
    invoke-direct {p0, v2, p4}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(II)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 344
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 341
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(II)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 335
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(II)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 324
    :cond_3
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p2

    .line 325
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result p2

    if-ne v6, p2, :cond_4

    .line 327
    invoke-direct {p0, v2, p5}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfoForSubscriber(II)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_4
    if-ne v3, p2, :cond_5

    .line 329
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccProvider;->getUsimPBCapaInfoForSubscriber(I)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 331
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 348
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 262
    :pswitch_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 265
    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 266
    aget-object p3, p2, v2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 267
    aget-object p2, p2, v6

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 269
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 270
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-eq p2, p5, :cond_b

    if-eq p2, v1, :cond_a

    if-eq p2, v0, :cond_9

    if-ne p2, p4, :cond_8

    .line 289
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 295
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 286
    :cond_a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 276
    :cond_b
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result p2

    if-ne p2, v6, :cond_c

    .line 278
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_c
    if-ne p2, v3, :cond_d

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getUSIMPBCapa()Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 282
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 299
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 263
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p1

    .line 254
    invoke-direct {p0, p5, v6, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 251
    :pswitch_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 250
    invoke-direct {p0, p5, v6, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 247
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p1

    .line 246
    invoke-direct {p0, v0, v2, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 243
    :pswitch_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 242
    invoke-direct {p0, v0, v2, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 232
    :pswitch_6
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/IccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 229
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p1

    invoke-direct {p0, p4, v2, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 226
    :pswitch_8
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 225
    invoke-direct {p0, p4, v2, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 222
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 219
    :pswitch_a
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 218
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 215
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p1

    invoke-direct {p0, p5, v2, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 212
    :pswitch_c
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 211
    invoke-direct {p0, p5, v2, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZI)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 239
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p1

    invoke-direct {p0, p5, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEfInit(II)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    .line 236
    :cond_11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 235
    invoke-direct {p0, p5, p1}, Lcom/android/internal/telephony/IccProvider;->loadFromEfInit(II)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .line 789
    const-string p3, "update"

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 791
    sget-object p3, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/16 p4, 0x6f3a

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p3, v0, :cond_5

    const/4 v3, 0x2

    if-eq p3, v3, :cond_4

    const/4 v3, 0x3

    const/16 v4, 0x6f3b

    .line 792
    const-string v5, "pin2"

    if-eq p3, v3, :cond_3

    const/4 v3, 0x4

    if-eq p3, v3, :cond_2

    const/16 v3, 0x14

    if-eq p3, v3, :cond_1

    const/16 v3, 0x15

    if-eq p3, v3, :cond_0

    const/16 v3, 0x6f40

    packed-switch p3, :pswitch_data_0

    .line 880
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot insert into URL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 860
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p3

    :goto_0
    move v7, p3

    move p3, v0

    move-object v6, v1

    :goto_1
    move v4, v3

    goto/16 :goto_8

    .line 854
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p3

    goto :goto_0

    .line 846
    :pswitch_2
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 848
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p4

    :goto_2
    move-object v6, p3

    move v7, p4

    move p3, v0

    goto/16 :goto_8

    .line 839
    :pswitch_3
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 841
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p4

    goto :goto_2

    .line 834
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p3

    :goto_3
    move v7, p3

    move v4, p4

    move p3, v0

    move-object v6, v1

    goto :goto_8

    .line 828
    :pswitch_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p3

    goto :goto_3

    .line 823
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p3

    :goto_4
    move v7, p3

    move-object v6, v1

    move p3, v2

    goto :goto_1

    .line 818
    :pswitch_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p3

    goto :goto_4

    .line 873
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p3

    goto :goto_3

    .line 866
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p3

    goto :goto_3

    .line 811
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p3

    .line 812
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_5
    move v7, p3

    move-object v6, p4

    :goto_6
    move p3, v2

    goto :goto_8

    .line 805
    :cond_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p3

    .line 806
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_5

    .line 800
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result p3

    :goto_7
    move v7, p3

    move v4, p4

    move-object v6, v1

    goto :goto_6

    .line 795
    :cond_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p3

    goto :goto_7

    :goto_8
    const/4 p4, -0x1

    if-eqz p3, :cond_7

    .line 887
    const-string p3, "adn_index"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 888
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 890
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p4

    :cond_6
    move-object v3, p0

    move-object v5, p2

    move v8, p4

    .line 893
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndexAndGetIndex(ILandroid/content/ContentValues;Ljava/lang/String;II)I

    move-result p4

    goto :goto_9

    :cond_7
    move-object v3, p0

    move-object v5, p2

    .line 895
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILandroid/content/ContentValues;Ljava/lang/String;I)Z

    move-result v0

    :goto_9
    if-nez v0, :cond_8

    return v2

    .line 902
    :cond_8
    invoke-virtual {v3}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
