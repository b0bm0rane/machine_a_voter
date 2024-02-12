<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240212132511 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE candidat_sessions_vote (candidat_id INT NOT NULL, sessions_vote_id INT NOT NULL, INDEX IDX_4D8AD81F8D0EB82 (candidat_id), INDEX IDX_4D8AD81FE9FD2A5E (sessions_vote_id), PRIMARY KEY(candidat_id, sessions_vote_id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('CREATE TABLE vote (id INT AUTO_INCREMENT NOT NULL, tour INT NOT NULL, session_id INT NOT NULL, candidat_id INT NOT NULL, INDEX IDX_5A108564613FECDF (session_id), INDEX IDX_5A1085648D0EB82 (candidat_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4');
        $this->addSql('ALTER TABLE candidat_sessions_vote ADD CONSTRAINT FK_4D8AD81F8D0EB82 FOREIGN KEY (candidat_id) REFERENCES candidat (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE candidat_sessions_vote ADD CONSTRAINT FK_4D8AD81FE9FD2A5E FOREIGN KEY (sessions_vote_id) REFERENCES sessions_vote (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE vote ADD CONSTRAINT FK_5A108564613FECDF FOREIGN KEY (session_id) REFERENCES sessions_vote (id)');
        $this->addSql('ALTER TABLE vote ADD CONSTRAINT FK_5A1085648D0EB82 FOREIGN KEY (candidat_id) REFERENCES candidat (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE candidat_sessions_vote DROP FOREIGN KEY FK_4D8AD81F8D0EB82');
        $this->addSql('ALTER TABLE candidat_sessions_vote DROP FOREIGN KEY FK_4D8AD81FE9FD2A5E');
        $this->addSql('ALTER TABLE vote DROP FOREIGN KEY FK_5A108564613FECDF');
        $this->addSql('ALTER TABLE vote DROP FOREIGN KEY FK_5A1085648D0EB82');
        $this->addSql('DROP TABLE candidat_sessions_vote');
        $this->addSql('DROP TABLE vote');
    }
}
