.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final ACCOUNT_MANAGER_HELPER:Ljava/lang/String; = "account_manager"

.field private static final APP_GENDER_HELPER:Ljava/lang/String; = "app_gender"

.field private static final APP_LOCALES_HELPER:Ljava/lang/String; = "app_locales"

.field private static final COMPANION_HELPER:Ljava/lang/String; = "companion"

.field private static final DISPLAY_HELPER:Ljava/lang/String; = "display"

.field private static final INPUT_HELPER:Ljava/lang/String; = "input"

.field private static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field private static final PEOPLE_HELPER:Ljava/lang/String; = "people"

.field private static final PERMISSION_HELPER:Ljava/lang/String; = "permissions"

.field private static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field private static final SHORTCUT_MANAGER_HELPER:Ljava/lang/String; = "shortcut_manager"

.field private static final SLICES_HELPER:Ljava/lang/String; = "slices"

.field private static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field private static final SYSTEM_GENDER_HELPER:Ljava/lang/String; = "system_gender"

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final USAGE_STATS_HELPER:Ljava/lang/String; = "usage_stats"

.field private static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final WEAR_BACKUP_HELPER:Ljava/lang/String; = "wear"

.field private static final sEligibleHelpersForNonSystemUser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEligibleHelpersForProfileUser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsProfileUser:Z

.field private mLogger:Landroid/app/backup/BackupRestoreEventLogger;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 82
    nop

    .line 83
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/io/File;

    .line 85
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 90
    nop

    .line 91
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/io/File;

    .line 93
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 102
    const-string/jumbo v7, "system_gender"

    const-string v8, "display"

    const-string/jumbo v1, "permissions"

    const-string/jumbo v2, "notifications"

    const-string v3, "account_sync_settings"

    const-string v4, "app_locales"

    const-string v5, "companion"

    const-string v6, "app_gender"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    .line 114
    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    const-string/jumbo v5, "input"

    const-string/jumbo v6, "wear"

    const-string v1, "account_manager"

    const-string/jumbo v2, "usage_stats"

    const-string/jumbo v3, "preferred_activities"

    const-string/jumbo v4, "shortcut_manager"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Lcom/android/server/backup/SetUtils;->union(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForNonSystemUser:Ljava/util/Set;

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 120
    iput-boolean v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    return-void
.end method

.method private addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V
    .locals 1
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .param p2, "helper"    # Landroid/app/backup/BackupHelperWithLogger;

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/backup/SystemBackupAgent;->isHelperEligibleForUser(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 239
    nop

    .line 240
    iget-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    invoke-virtual {p2, v0}, Landroid/app/backup/BackupHelperWithLogger;->setLogger(Landroid/app/backup/BackupRestoreEventLogger;)V

    .line 243
    :cond_0
    return-void
.end method

.method private isHelperEligibleForUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .line 247
    iget v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    if-eqz v0, :cond_1

    .line 253
    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 257
    :cond_1
    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForNonSystemUser:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/UserHandle;I)V
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "backupDestination"    # I

    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->onCreate(Landroid/os/UserHandle;I)V

    .line 126
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 128
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 129
    iget v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupAgentHelper;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 132
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->isProfile()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    .line 135
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "userManager":Landroid/os/UserManager;
    :cond_0
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    const-string v1, "account_sync_settings"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 137
    new-instance v0, Lcom/android/server/backup/PreferredActivityBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>(I)V

    const-string/jumbo v1, "preferred_activities"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 138
    new-instance v0, Lcom/android/server/notification/NotificationBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationBackupHelper;-><init>(I)V

    const-string/jumbo v1, "notifications"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 139
    new-instance v0, Lcom/android/server/backup/PermissionBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/PermissionBackupHelper;-><init>(I)V

    const-string/jumbo v1, "permissions"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 140
    new-instance v0, Lcom/android/server/backup/UsageStatsBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(I)V

    const-string/jumbo v1, "usage_stats"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 141
    new-instance v0, Lcom/android/server/backup/ShortcutBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>(I)V

    const-string/jumbo v1, "shortcut_manager"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 142
    new-instance v0, Lcom/android/server/backup/AccountManagerBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>(I)V

    const-string v1, "account_manager"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 143
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.slices_disabled"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    new-instance v0, Lcom/android/server/backup/SliceBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "slices"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 146
    :cond_1
    new-instance v0, Lcom/android/server/backup/PeopleBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/PeopleBackupHelper;-><init>(I)V

    const-string/jumbo v1, "people"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 147
    new-instance v0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;-><init>(I)V

    const-string v1, "app_locales"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 148
    new-instance v0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;-><init>(I)V

    const-string v1, "app_gender"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 150
    new-instance v0, Lcom/android/server/backup/CompanionBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/CompanionBackupHelper;-><init>(I)V

    const-string v1, "companion"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 151
    new-instance v0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;-><init>(I)V

    const-string/jumbo v1, "system_gender"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 153
    new-instance v0, Lcom/android/server/display/DisplayBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayBackupHelper;-><init>(I)V

    const-string v1, "display"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 154
    nop

    .line 159
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Lcom/android/server/backup/WearBackupHelper;

    invoke-direct {v0}, Lcom/android/server/backup/WearBackupHelper;-><init>()V

    const-string/jumbo v1, "wear"

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 162
    :cond_2
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {p0, v2, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 179
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, "system_files"

    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 183
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 16
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring file domain="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SystemBackupAgent"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "restoredWallpaper":Z
    const/4 v4, 0x0

    .line 199
    .local v4, "outFile":Ljava/io/File;
    const-string/jumbo v5, "r"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "wallpaper"

    if-eqz v5, :cond_1

    .line 200
    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 202
    const/4 v0, 0x1

    move-object v15, v4

    move v4, v0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 205
    const/4 v0, 0x1

    move-object v15, v4

    move v4, v0

    goto :goto_0

    .line 210
    :cond_1
    move-object v15, v4

    move v4, v0

    .end local v0    # "restoredWallpaper":Z
    .local v4, "restoredWallpaper":Z
    .local v15, "outFile":Ljava/io/File;
    :goto_0
    if-nez v15, :cond_2

    .line 211
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping unrecognized system file: [ "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    goto :goto_3

    .line 213
    :cond_2
    :goto_1
    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    invoke-static/range {v7 .. v15}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 215
    if-eqz v4, :cond_3

    .line 216
    nop

    .line 217
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 219
    .local v5, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v5, :cond_3

    .line 221
    :try_start_1
    invoke-interface {v5}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    goto :goto_2

    .line 222
    :catch_1
    move-exception v0

    .line 223
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t restore settings\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v5    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_3
    :goto_2
    goto :goto_4

    .line 227
    :goto_3
    nop

    .line 228
    .local v0, "e":Ljava/io/IOException;
    if-eqz v4, :cond_4

    .line 230
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 231
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    return-void
.end method
